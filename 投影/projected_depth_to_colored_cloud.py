#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import collections
import sys

import numpy as np


def _raise_ros_env_error(exc):
    msg = "\n".join(
        [
            "ROS Python 环境未正确加载，无法导入依赖。",
            f"当前 Python: {sys.executable}",
            f"Python 版本: {sys.version.split()[0]}",
            "",
            "请使用系统 Python 启动节点：",
            "  source /opt/ros/noetic/setup.bash",
            "  /usr/bin/python3 /home/zts/真机数据接口/projected_depth_to_colored_cloud.py",
            "",
            "如果当前在 Conda 环境中，请先执行: conda deactivate",
        ]
    )
    raise RuntimeError(msg) from exc


try:
    import message_filters
    import rospy
    from cv_bridge import CvBridge
    from nav_msgs.msg import Odometry
    from sensor_msgs.msg import Image
    from sensor_msgs.msg import PointCloud2
    from sensor_msgs.msg import PointField
except ModuleNotFoundError as exc:
    if exc.name in {
        "cv_bridge",
        "message_filters",
        "rospkg",
        "roslib",
        "rospy",
    }:
        _raise_ros_env_error(exc)
    raise


class ProjectedDepthToColoredCloud(object):
    def __init__(self):
        rospy.init_node("projected_depth_to_colored_cloud", anonymous=True)

        self.bridge = CvBridge()

        self.rgb_topic = rospy.get_param("~rgb_topic", "/camera/color/image_raw")
        self.depth_topic = rospy.get_param("~depth_topic", "/projected/depth")
        self.pose_topic = rospy.get_param("~pose_topic", "/LIO/odom_vehicle")
        self.out_cloud_topic = rospy.get_param(
            "~out_cloud_topic", "/projected/colored_cloud"
        )
        self.sync_queue_size = int(rospy.get_param("~queue_size", 20))
        self.sync_slop = float(rospy.get_param("~sync_slop", 0.05))
        self.min_depth = float(rospy.get_param("~min_depth", 0.1))
        self.max_depth = float(rospy.get_param("~max_depth", 50.0))
        self.pixel_stride = max(1, int(rospy.get_param("~pixel_stride", 1)))
        self.max_points = int(rospy.get_param("~max_points", 50000))
        self.accumulate_frames = int(rospy.get_param("~accumulate_frames", 120))
        self.max_accumulated_points = int(
            rospy.get_param("~max_accumulated_points", 300000)
        )
        if self.max_accumulated_points > 0:
            self.max_accumulated_points = max(
                self.max_points, self.max_accumulated_points
            )
        self.frame_voxel_size = max(
            0.0, float(rospy.get_param("~frame_voxel_size", 0.08))
        )
        self.clear_on_empty = bool(rospy.get_param("~clear_on_empty", False))
        self.output_frame_id = rospy.get_param("~output_frame_id", "")
        self.cloud_dtype = np.dtype(
            [
                ("x", np.float32),
                ("y", np.float32),
                ("z", np.float32),
                ("rgb", np.float32),
            ]
        )

        # Camera intrinsics
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
        self.fx = float(self.K[0, 0])
        self.fy = float(self.K[1, 1])
        self.cx = float(self.K[0, 2])
        self.cy = float(self.K[1, 2])

        # camera_T_lidar: point from lidar frame to camera frame
        self.T_cam_lidar = np.array(
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
            ],
            dtype=np.float64,
        ).reshape(4, 4)
        self.T_lidar_cam = np.linalg.inv(self.T_cam_lidar)

        # imu_T_lidar: point from lidar frame to imu frame
        self.T_imu_lidar = np.eye(4, dtype=np.float64)
        self.T_imu_lidar[:3, :3] = np.array(
            rospy.get_param(
                "~imu_R_lidar",
                [
                    [1.0, 0.0, 0.0],
                    [0.0, 1.0, 0.0],
                    [0.0, 0.0, 1.0],
                ],
            ),
            dtype=np.float64,
        )
        self.T_imu_lidar[:3, 3] = np.array(
            rospy.get_param("~imu_t_lidar", [-0.011, -0.02329, 0.04412]),
            dtype=np.float64,
        )

        self.cloud_history = collections.deque()
        self.accumulated_point_count = 0

        self.pub_cloud = rospy.Publisher(self.out_cloud_topic, PointCloud2, queue_size=1)

        self.sub_rgb = message_filters.Subscriber(self.rgb_topic, Image, queue_size=1)
        self.sub_depth = message_filters.Subscriber(self.depth_topic, Image, queue_size=1)
        self.sub_pose = message_filters.Subscriber(self.pose_topic, Odometry, queue_size=10)

        self.ts = message_filters.ApproximateTimeSynchronizer(
            [self.sub_rgb, self.sub_depth, self.sub_pose],
            queue_size=self.sync_queue_size,
            slop=self.sync_slop,
        )
        self.ts.registerCallback(self.sync_callback)

        rospy.loginfo(
            "[projected_depth_to_colored_cloud] ready: rgb=%s depth=%s pose=%s out=%s accumulate_frames=%s max_accumulated_points=%s frame_voxel_size=%.3f",
            self.rgb_topic,
            self.depth_topic,
            self.pose_topic,
            self.out_cloud_topic,
            self.accumulate_frames,
            self.max_accumulated_points,
            self.frame_voxel_size,
        )

    def sync_callback(self, rgb_msg, depth_msg, pose_msg):
        try:
            rgb_img = self.bridge.imgmsg_to_cv2(rgb_msg, desired_encoding="bgr8")
            depth_img = self.bridge.imgmsg_to_cv2(
                depth_msg, desired_encoding="passthrough"
            ).astype(np.float32)
        except Exception as exc:
            rospy.logwarn("Failed to decode input images: %s", exc)
            return

        if rgb_img.shape[:2] != depth_img.shape[:2]:
            rospy.logwarn(
                "RGB/depth shape mismatch: rgb=%s depth=%s",
                rgb_img.shape,
                depth_img.shape,
            )
            return

        valid = np.isfinite(depth_img) & (depth_img > self.min_depth)
        if self.max_depth > self.min_depth:
            valid &= depth_img < self.max_depth

        if self.pixel_stride > 1:
            stride_mask = np.zeros_like(valid, dtype=np.bool_)
            stride_mask[:: self.pixel_stride, :: self.pixel_stride] = True
            valid &= stride_mask

        ys, xs = np.nonzero(valid)
        if ys.size == 0:
            rospy.logwarn_throttle(2.0, "No valid projected depth pixels to reconstruct.")
            if self.clear_on_empty:
                self._clear_cloud_history()
            self._publish_cloud(
                rgb_msg.header.stamp,
                self.output_frame_id or pose_msg.header.frame_id or "world",
                self._current_cloud(),
            )
            return

        z = depth_img[ys, xs]
        x = (xs.astype(np.float32) - self.cx) * z / self.fx
        y = (ys.astype(np.float32) - self.cy) * z / self.fy
        pts_cam = np.stack([x, y, z], axis=1).astype(np.float32)

        colors_bgr = rgb_img[ys, xs]

        if pts_cam.shape[0] > self.max_points:
            sel = np.random.choice(pts_cam.shape[0], self.max_points, replace=False)
            pts_cam = pts_cam[sel]
            colors_bgr = colors_bgr[sel]

        pts_world = self._transform_cam_to_world(pts_cam, pose_msg)
        pts_world, colors_bgr = self._voxel_filter_points(pts_world, colors_bgr)

        if pts_world.shape[0] > self.max_points:
            sel = np.random.choice(pts_world.shape[0], self.max_points, replace=False)
            pts_world = pts_world[sel]
            colors_bgr = colors_bgr[sel]

        cloud_array = self._build_cloud_array(pts_world, colors_bgr)
        self._append_cloud(cloud_array)
        publish_array = self._current_cloud()

        rospy.loginfo_throttle(
            2.0,
            "Accumulated map: %d frames, %d points",
            len(self.cloud_history),
            self.accumulated_point_count,
        )

        frame_id = self.output_frame_id or pose_msg.header.frame_id or "world"
        self._publish_cloud(rgb_msg.header.stamp, frame_id, publish_array)

    def _transform_cam_to_world(self, pts_cam, pose_msg):
        world_T_imu = self._odom_to_matrix(pose_msg)
        world_T_camera = world_T_imu.dot(self.T_imu_lidar).dot(self.T_lidar_cam)

        pts_h = np.ones((pts_cam.shape[0], 4), dtype=np.float64)
        pts_h[:, :3] = pts_cam.astype(np.float64)
        pts_world = pts_h.dot(world_T_camera.T)
        return pts_world[:, :3].astype(np.float32)

    def _odom_to_matrix(self, pose_msg):
        pose = pose_msg.pose.pose
        qx = pose.orientation.x
        qy = pose.orientation.y
        qz = pose.orientation.z
        qw = pose.orientation.w

        R = self._quat_to_rot(qx, qy, qz, qw)
        T = np.eye(4, dtype=np.float64)
        T[:3, :3] = R
        T[0, 3] = pose.position.x
        T[1, 3] = pose.position.y
        T[2, 3] = pose.position.z
        return T

    def _quat_to_rot(self, x, y, z, w):
        norm = np.sqrt(x * x + y * y + z * z + w * w)
        if norm < 1e-12:
            return np.eye(3, dtype=np.float64)

        x /= norm
        y /= norm
        z /= norm
        w /= norm

        return np.array(
            [
                [1.0 - 2.0 * (y * y + z * z), 2.0 * (x * y - z * w), 2.0 * (x * z + y * w)],
                [2.0 * (x * y + z * w), 1.0 - 2.0 * (x * x + z * z), 2.0 * (y * z - x * w)],
                [2.0 * (x * z - y * w), 2.0 * (y * z + x * w), 1.0 - 2.0 * (x * x + y * y)],
            ],
            dtype=np.float64,
        )

    def _build_cloud_array(self, pts_world, colors_bgr):
        cloud = np.zeros(pts_world.shape[0], dtype=self.cloud_dtype)
        cloud["x"] = pts_world[:, 0]
        cloud["y"] = pts_world[:, 1]
        cloud["z"] = pts_world[:, 2]

        rgb_uint32 = (
            colors_bgr[:, 2].astype(np.uint32) << 16
            | colors_bgr[:, 1].astype(np.uint32) << 8
            | colors_bgr[:, 0].astype(np.uint32)
        )
        cloud["rgb"] = rgb_uint32.view(np.float32)
        return cloud

    def _voxel_filter_points(self, pts_world, colors_bgr):
        if self.frame_voxel_size <= 0.0 or pts_world.shape[0] <= 1:
            return pts_world, colors_bgr

        voxel_coords = np.floor(pts_world / self.frame_voxel_size).astype(np.int32)
        _, unique_idx = np.unique(voxel_coords, axis=0, return_index=True)
        unique_idx.sort()
        return pts_world[unique_idx], colors_bgr[unique_idx]

    def _append_cloud(self, cloud_array):
        if cloud_array.size == 0:
            return

        self.cloud_history.append(cloud_array)
        self.accumulated_point_count += int(cloud_array.size)

        while self.accumulate_frames > 0 and len(self.cloud_history) > self.accumulate_frames:
            removed = self.cloud_history.popleft()
            self.accumulated_point_count -= int(removed.size)

        while (
            self.max_accumulated_points > 0
            and self.accumulated_point_count > self.max_accumulated_points
            and len(self.cloud_history) > 1
        ):
            removed = self.cloud_history.popleft()
            self.accumulated_point_count -= int(removed.size)

    def _clear_cloud_history(self):
        self.cloud_history.clear()
        self.accumulated_point_count = 0

    def _current_cloud(self):
        if not self.cloud_history:
            return self._empty_cloud()
        if len(self.cloud_history) == 1:
            return self.cloud_history[0]
        return np.concatenate(list(self.cloud_history))

    def _empty_cloud(self):
        return np.zeros((0,), dtype=self.cloud_dtype)

    def _publish_cloud(self, stamp, frame_id, cloud_array):
        msg = PointCloud2()
        msg.header.stamp = stamp
        msg.header.frame_id = frame_id
        msg.height = 1
        msg.width = len(cloud_array)
        msg.fields = [
            PointField(name="x", offset=0, datatype=PointField.FLOAT32, count=1),
            PointField(name="y", offset=4, datatype=PointField.FLOAT32, count=1),
            PointField(name="z", offset=8, datatype=PointField.FLOAT32, count=1),
            PointField(name="rgb", offset=12, datatype=PointField.FLOAT32, count=1),
        ]
        msg.is_bigendian = False
        msg.point_step = 16
        msg.row_step = msg.point_step * msg.width
        msg.is_dense = False
        msg.data = cloud_array.tobytes()
        self.pub_cloud.publish(msg)


def main():
    ProjectedDepthToColoredCloud()
    rospy.spin()


if __name__ == "__main__":
    main()
