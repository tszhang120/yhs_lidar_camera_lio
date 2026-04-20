#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
import os
import sys
import time

import cv2
import numpy as np


def _raise_ros_env_error(exc):
    msg = "\n".join(
        [
            "ROS Python 环境未正确加载，无法导入依赖。",
            f"当前 Python: {sys.executable}",
            f"Python 版本: {sys.version.split()[0]}",
            "",
            "请使用系统 Python，并先 source 对应工作空间：",
            "  source /opt/ros/noetic/setup.bash",
            "  source /home/zts/真机数据接口/livox_mid360/devel/setup.bash",
            "  /usr/bin/python3 /home/zts/真机数据接口/lidar_image_projector.py",
            "",
            "如果当前在 Conda 环境中，请先执行: conda deactivate",
        ]
    )
    raise RuntimeError(msg) from exc


try:
    import message_filters
    import rospy
    from cv_bridge import CvBridge
    from livox_ros_driver2.msg import CustomMsg
    from sensor_msgs.msg import Image
except ModuleNotFoundError as exc:
    if exc.name in {
        "cv_bridge",
        "livox_ros_driver2",
        "message_filters",
        "rospkg",
        "roslib",
        "rospy",
    }:
        _raise_ros_env_error(exc)
    raise


class LidarToImageProjector(object):
    def __init__(self):
        rospy.init_node("lidar_to_image_projector", anonymous=True)
        self.bridge = CvBridge()

        # --- Topics ---
        self.pc_topic = "/livox/lidar"
        self.img_topic = "/camera/color/image_raw"
        self.out_image_topic = "/projected/image"
        self.out_depth_topic = "/projected/depth"
        self.color_mode = rospy.get_param(
            "~color_mode", "intensity"
        )  # depth or intensity

        # --- Camera intrinsics ---
        self.K = np.array(
            [
                607.7688598632812,
                0.0,
                304.8197021484375,
                0.0,
                608.0030517578125,
                249.65443420410156,
                0.0,
                0.0,
                1.0,
            ],
            dtype=np.float64,
        ).reshape(3, 3)

        # --- Distortion coefficients ---
        self.dist = np.zeros((5, 1), dtype=np.float64)

        # --- Extrinsics ---
        T_list = np.array(
            [
                0.000235,
                -0.999953,
                0.009736,
                0.015898,
                0.404201,
                -0.008810,
                -0.914628,
                -0.098118,
                0.914671,
                0.004150,
                0.404179,
                -0.013745,
                0.0,
                0.0,
                0.0,
                1.0,
            ]
        )
        self.T_cam_lidar = np.array(T_list, dtype=np.float64).reshape(4, 4)
        self.R = self.T_cam_lidar[:3, :3]
        self.t = self.T_cam_lidar[:3, 3].reshape(3, 1)

        # 参数
        self.min_z = float(rospy.get_param("~min_cam_z", 0.1))
        self.pt_radius = int(rospy.get_param("~point_radius", 2))
        self.max_draw_points = int(rospy.get_param("~max_draw_points", 20000))

        # 使用同步订阅 - 注意点云类型改为 CustomMsg
        self.sub_img = message_filters.Subscriber(self.img_topic, Image, queue_size=1)
        self.sub_pc = message_filters.Subscriber(self.pc_topic, CustomMsg, queue_size=1)

        self.ts = message_filters.ApproximateTimeSynchronizer(
            [self.sub_img, self.sub_pc], queue_size=10, slop=0.1
        )
        self.ts.registerCallback(self.sync_callback)

        self.pub = rospy.Publisher(self.out_image_topic, Image, queue_size=1)
        self.pub_depth = rospy.Publisher(self.out_depth_topic, Image, queue_size=1)

        rospy.loginfo("[lidar_to_image_projector] ready with Livox CustomMsg support")

    def sync_callback(self, img_msg, pc_msg):
        """同步处理图像和Livox点云"""
        try:
            cv_img = self.bridge.imgmsg_to_cv2(img_msg, desired_encoding="bgr8")
            self.process_livox_data(img_msg, cv_img, pc_msg)
        except Exception as e:
            rospy.logwarn("sync_callback failed: %s", e)

    def process_livox_data(self, img_msg, cv_img, pc_msg):
        """处理Livox自定义消息格式的点云"""
        rospy.loginfo(
            f"Processing Livox data: image {cv_img.shape}, pointcloud time: {pc_msg.header.stamp}"
        )
        empty_depth = np.zeros(cv_img.shape[:2], dtype=np.float32)

        # 从Livox CustomMsg中提取点云数据
        pts = []
        intens = []

        # Livox CustomMsg的points字段包含点云数据
        for point in pc_msg.points:
            # Livox点格式: x, y, z, reflectivity, tag, line
            x = point.x
            y = point.y
            z = point.z
            intensity = point.reflectivity  # 反射强度

            pts.append([x, y, z])
            intens.append(intensity)

        rospy.loginfo(f"Extracted {len(pts)} points from Livox message")

        if len(pts) == 0:
            rospy.logwarn("No points extracted from Livox message.")
            self._publish_outputs(img_msg, cv_img, empty_depth)
            return

        pts = np.asarray(pts, dtype=np.float64)
        intensity = np.asarray(intens, dtype=np.float64)

        rospy.loginfo(
            f"Point cloud range - x:[{pts[:,0].min():.2f}, {pts[:,0].max():.2f}], "
            f"y:[{pts[:,1].min():.2f}, {pts[:,1].max():.2f}], "
            f"z:[{pts[:,2].min():.2f}, {pts[:,2].max():.2f}]"
        )

        # 变换到相机坐标系
        pts_cam = self._transform_lidar_to_cam(pts)
        rospy.loginfo(
            f"Transformed to camera frame, z-range: [{pts_cam[:,2].min():.2f}, {pts_cam[:,2].max():.2f}]"
        )

        # 投影
        uv, mask_z = self._project_points(pts_cam)
        rospy.loginfo(f"After projection: {uv.shape[0]} points")

        if uv.shape[0] == 0:
            rospy.logwarn("No valid points after projection.")
            self._publish_outputs(img_msg, cv_img, empty_depth)
            return

        # 图像范围过滤
        H, W = cv_img.shape[:2]
        u = uv[:, 0]
        v = uv[:, 1]
        in_img = (u >= 0) & (u < W) & (v >= 0) & (v < H)

        idx_z = np.where(mask_z)[0]
        idx_keep = idx_z[in_img]

        rospy.loginfo(f"Points in image: {len(idx_keep)}")

        if len(idx_keep) == 0:
            rospy.logwarn("No points in image bounds.")
            self._publish_outputs(img_msg, cv_img, empty_depth)
            return

        # 准备绘制
        pts_cam_keep = pts_cam[idx_keep]
        depth = pts_cam_keep[:, 2]
        inten_keep = intensity[idx_keep]
        u_keep = u[in_img]
        v_keep = v[in_img]

        px_keep = np.rint(u_keep).astype(np.int32)
        py_keep = np.rint(v_keep).astype(np.int32)
        pix_mask = (px_keep >= 0) & (px_keep < W) & (py_keep >= 0) & (py_keep < H)

        if not np.any(pix_mask):
            rospy.logwarn("No valid rounded pixels after projection.")
            self._publish_outputs(img_msg, cv_img, empty_depth)
            return

        px_keep = px_keep[pix_mask]
        py_keep = py_keep[pix_mask]
        u_keep = u_keep[pix_mask]
        v_keep = v_keep[pix_mask]
        depth = depth[pix_mask]
        inten_keep = inten_keep[pix_mask]

        depth_img = self._build_depth_image(H, W, px_keep, py_keep, depth)

        # 颜色模式
        if self.color_mode == "depth":
            inten_keep_for_color = None
        elif self.color_mode == "intensity":
            inten_keep_for_color = inten_keep
        else:  # auto
            inten_keep_for_color = inten_keep

        colors = self._colorize(depth, inten_keep_for_color)

        # 限制绘制点数
        if len(u_keep) > self.max_draw_points:
            sel = np.random.choice(len(u_keep), self.max_draw_points, replace=False)
            u_keep = u_keep[sel]
            v_keep = v_keep[sel]
            colors = colors[sel]
            rospy.loginfo(f"Downsampled to {self.max_draw_points} points")

        # 绘制点
        img_out = cv_img.copy()
        for (px, py), c in zip(np.stack([u_keep, v_keep], axis=1), colors):
            cv2.circle(
                img_out,
                (int(round(px)), int(round(py))),
                self.pt_radius,
                tuple(int(x) for x in c.tolist()),
                -1,
            )

        # 在图像上添加调试信息
        cv2.putText(
            img_out,
            f"Points: {len(u_keep)}",
            (10, 30),
            cv2.FONT_HERSHEY_SIMPLEX,
            0.7,
            (255, 255, 255),
            2,
        )
        cv2.putText(
            img_out,
            f"Depth: {depth.min():.1f}-{depth.max():.1f}m",
            (10, 60),
            cv2.FONT_HERSHEY_SIMPLEX,
            0.7,
            (255, 255, 255),
            2,
        )

        # 发布结果
        self._publish_outputs(img_msg, img_out, depth_img)
        rospy.loginfo("Published projected image with Livox points")

    def _build_depth_image(self, height, width, px, py, depth):
        """构建投影深度图，每个像素保留最近的点深度。"""
        z_buffer = np.full((height, width), np.inf, dtype=np.float32)
        order = np.argsort(depth)
        for idx in order:
            x = px[idx]
            y = py[idx]
            z = np.float32(depth[idx])
            if z < z_buffer[y, x]:
                z_buffer[y, x] = z

        depth_img = np.zeros((height, width), dtype=np.float32)
        valid = np.isfinite(z_buffer)
        depth_img[valid] = z_buffer[valid]
        return depth_img

    def _publish_outputs(self, img_msg, image_bgr, depth_img):
        image_msg = self.bridge.cv2_to_imgmsg(image_bgr, encoding="bgr8")
        image_msg.header = img_msg.header
        self.pub.publish(image_msg)

        depth_msg = self.bridge.cv2_to_imgmsg(depth_img, encoding="32FC1")
        depth_msg.header = img_msg.header
        self.pub_depth.publish(depth_msg)

    def _transform_lidar_to_cam(self, pts_lidar_xyz):
        """将点云从LiDAR坐标系变换到相机坐标系"""
        if pts_lidar_xyz.shape[0] == 0:
            return pts_lidar_xyz
        X = pts_lidar_xyz.T
        X_cam = self.R.dot(X) + self.t
        return X_cam.T

    def _project_points(self, pts_cam_xyz):
        """将相机坐标系下的点投影到图像平面"""
        z = pts_cam_xyz[:, 2]
        mask_z = z > self.min_z
        pts = pts_cam_xyz[mask_z]
        if pts.shape[0] == 0:
            return np.empty((0, 2), np.float32), np.zeros((0,), np.bool_)

        rvec = np.zeros((3, 1), dtype=np.float64)
        tvec = np.zeros((3, 1), dtype=np.float64)
        objp = pts.reshape(-1, 1, 3).astype(np.float64)

        uv, _ = cv2.projectPoints(objp, rvec, tvec, self.K, self.dist)
        uv = uv.reshape(-1, 2)
        return uv, mask_z

    def _colorize(self, depth, intensity=None):
        """根据深度或强度生成颜色"""
        if intensity is not None:
            v = intensity.astype(np.float32)
            v = v - np.nanmin(v) if np.isfinite(v).any() else v
            maxv = np.nanmax(v) if np.isfinite(v).any() else 1.0
            v = v / (maxv + 1e-6)
        else:
            v = 1.0 / np.maximum(depth.astype(np.float32), 1e-3)
            v = (v - v.min()) / (v.max() - v.min() + 1e-6)

        v8 = (v * 255.0).clip(0, 255).astype(np.uint8)
        cmap = cv2.applyColorMap(v8, cv2.COLORMAP_JET)
        return cmap.reshape(-1, 3)


def main():
    try:
        LidarToImageProjector()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass


if __name__ == "__main__":
    main()
