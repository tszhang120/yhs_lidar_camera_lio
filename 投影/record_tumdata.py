#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import cv2
import numpy as np
import rospy
import message_filters

from cv_bridge import CvBridge
from nav_msgs.msg import Odometry
from sensor_msgs.msg import Image


class TumRecorder(object):
    def __init__(self):
        self.save_path = rospy.get_param("~save_path", "./tum_data")
        self.rgb_topic = rospy.get_param("~rgb_topic", "/camera/color/image_raw")
        self.depth_topic = rospy.get_param("~depth_topic", "/projected/image")
        self.pose_topic = rospy.get_param("~pose_topic", "/LIO/odom_vehicle")
        self.record_depth = bool(rospy.get_param("~record_depth", True))
        self.sync_queue_size = int(rospy.get_param("~queue_size", 20))
        self.sync_slop = float(rospy.get_param("~sync_slop", 0.05))
        self.png_compression = int(rospy.get_param("~png_compression", 3))
        self.depth_mode = rospy.get_param("~depth_mode", "image").strip().lower()
        self.depth_unit = rospy.get_param("~depth_unit", "auto").strip().lower()
        self.tum_depth_scale = float(rospy.get_param("~tum_depth_scale", 5000.0))

        if self.depth_mode not in ("image", "tum_depth"):
            raise ValueError("~depth_mode must be 'image' or 'tum_depth'")

        self.bridge = CvBridge()

        self.rgb_dir = os.path.join(self.save_path, "rgb")
        self.depth_dir = os.path.join(self.save_path, "depth")
        os.makedirs(self.rgb_dir, exist_ok=True)
        if self.record_depth:
            os.makedirs(self.depth_dir, exist_ok=True)

        self.rgb_txt_path = os.path.join(self.save_path, "rgb.txt")
        self.depth_txt_path = os.path.join(self.save_path, "depth.txt")
        self.gt_txt_path = os.path.join(self.save_path, "groundtruth.txt")
        self.assoc_txt_path = os.path.join(self.save_path, "associations.txt")

        self.index = self._find_next_index(self.rgb_dir)

        self.rgb_file = self._open_with_header(
            self.rgb_txt_path,
            [
                "# TUM RGB image list",
                "# timestamp filename",
            ],
        )
        self.gt_file = self._open_with_header(
            self.gt_txt_path,
            [
                "# TUM trajectory / groundtruth format",
                "# timestamp tx ty tz qx qy qz qw",
                "# Source topic: {} (Odometry; may be estimated, not true ground truth)".format(self.pose_topic),
            ],
        )

        self.depth_file = None
        self.assoc_file = None
        if self.record_depth:
            if self.depth_mode == "tum_depth":
                depth_header = [
                    "# TUM depth image list",
                    "# timestamp filename",
                    "# Depth PNG values are scaled by tum_depth_scale={:.1f}".format(self.tum_depth_scale),
                ]
            else:
                depth_header = [
                    "# Projected lidar image list stored in TUM depth slot",
                    "# timestamp filename",
                    "# These files are ordinary images, not metric depth maps",
                ]
            self.depth_file = self._open_with_header(
                self.depth_txt_path,
                depth_header,
            )
            self.assoc_file = self._open_with_header(
                self.assoc_txt_path,
                [
                    "# Associations generated from synchronized callback",
                    "# rgb_timestamp rgb_file depth_timestamp depth_file",
                ],
            )

        self.sub_rgb = message_filters.Subscriber(self.rgb_topic, Image)
        self.sub_pose = message_filters.Subscriber(self.pose_topic, Odometry)

        if self.record_depth:
            self.sub_depth = message_filters.Subscriber(self.depth_topic, Image)
            self.sync = message_filters.ApproximateTimeSynchronizer(
                [self.sub_rgb, self.sub_depth, self.sub_pose],
                queue_size=self.sync_queue_size,
                slop=self.sync_slop,
            )
            self.sync.registerCallback(self.rgbd_callback)
        else:
            self.sync = message_filters.ApproximateTimeSynchronizer(
                [self.sub_rgb, self.sub_pose],
                queue_size=self.sync_queue_size,
                slop=self.sync_slop,
            )
            self.sync.registerCallback(self.rgb_callback)

        rospy.loginfo(
            "TumRecorder started. save_path=%s rgb_topic=%s depth_topic=%s pose_topic=%s record_depth=%s depth_mode=%s",
            self.save_path,
            self.rgb_topic,
            self.depth_topic if self.record_depth else "<disabled>",
            self.pose_topic,
            self.record_depth,
            self.depth_mode,
        )

    def _find_next_index(self, directory):
        max_index = -1
        for name in os.listdir(directory):
            stem, ext = os.path.splitext(name)
            if ext.lower() != ".png":
                continue
            if stem.isdigit():
                max_index = max(max_index, int(stem))
        return max_index + 1

    def _open_with_header(self, path, header_lines):
        needs_header = (not os.path.exists(path)) or os.path.getsize(path) == 0
        fp = open(path, "a", buffering=1)
        if needs_header:
            fp.write("\n".join(header_lines) + "\n")
        return fp

    def _stamp_to_sec(self, stamp):
        return stamp.secs + stamp.nsecs * 1e-9

    def _save_rgb(self, img_msg):
        rgb_stamp = self._stamp_to_sec(img_msg.header.stamp)
        rgb_img = self.bridge.imgmsg_to_cv2(img_msg, desired_encoding="bgr8")

        rel_path = "rgb/{:06d}.png".format(self.index)
        abs_path = os.path.join(self.save_path, rel_path)
        ok = cv2.imwrite(abs_path, rgb_img, [cv2.IMWRITE_PNG_COMPRESSION, self.png_compression])
        if not ok:
            raise RuntimeError("failed to write {}".format(abs_path))

        self.rgb_file.write("{:.9f} {}\n".format(rgb_stamp, rel_path))
        return rgb_stamp, rel_path

    def _save_depth(self, depth_msg):
        depth_stamp = self._stamp_to_sec(depth_msg.header.stamp)
        if self.depth_mode == "tum_depth":
            depth_img = self.bridge.imgmsg_to_cv2(depth_msg, desired_encoding="passthrough")
            depth_png = self._convert_depth_to_tum(depth_img)
        else:
            depth_png = self.bridge.imgmsg_to_cv2(depth_msg, desired_encoding="bgr8")

        rel_path = "depth/{:06d}.png".format(self.index)
        abs_path = os.path.join(self.save_path, rel_path)
        ok = cv2.imwrite(abs_path, depth_png, [cv2.IMWRITE_PNG_COMPRESSION, self.png_compression])
        if not ok:
            raise RuntimeError("failed to write {}".format(abs_path))

        self.depth_file.write("{:.9f} {}\n".format(depth_stamp, rel_path))
        return depth_stamp, rel_path

    def _convert_depth_to_tum(self, depth_img):
        if depth_img.ndim != 2:
            raise ValueError("depth image must be single-channel, got shape {}".format(depth_img.shape))

        if self.depth_unit not in ("auto", "mm", "m"):
            raise ValueError("unsupported depth_unit: {}".format(self.depth_unit))

        if self.depth_unit == "mm":
            depth_m = depth_img.astype(np.float32) * 0.001
        elif self.depth_unit == "m":
            depth_m = depth_img.astype(np.float32)
        elif np.issubdtype(depth_img.dtype, np.integer):
            # RealSense depth/image_rect_raw is usually uint16 in millimeters.
            depth_m = depth_img.astype(np.float32) * 0.001
        else:
            # Float depth images are typically already in meters.
            depth_m = depth_img.astype(np.float32)

        valid = np.isfinite(depth_m) & (depth_m > 0.0)
        depth_out = np.zeros(depth_m.shape, dtype=np.uint16)
        scaled = np.round(depth_m[valid] * self.tum_depth_scale)
        depth_out[valid] = np.clip(scaled, 0, np.iinfo(np.uint16).max).astype(np.uint16)
        return depth_out

    def _save_pose(self, pose_msg):
        pose_stamp = self._stamp_to_sec(pose_msg.header.stamp)
        position = pose_msg.pose.pose.position
        orientation = pose_msg.pose.pose.orientation

        self.gt_file.write(
            "{:.9f} {:.9f} {:.9f} {:.9f} {:.9f} {:.9f} {:.9f} {:.9f}\n".format(
                pose_stamp,
                position.x,
                position.y,
                position.z,
                orientation.x,
                orientation.y,
                orientation.z,
                orientation.w,
            )
        )
        return pose_stamp

    def rgb_callback(self, img_msg, pose_msg):
        try:
            rgb_stamp, rgb_rel_path = self._save_rgb(img_msg)
            pose_stamp = self._save_pose(pose_msg)
        except Exception as exc:
            rospy.logwarn("Failed to save TUM RGB frame %06d: %s", self.index, exc)
            return

        rospy.loginfo(
            "Saved TUM frame %06d rgb_ts=%.9f pose_ts=%.9f",
            self.index,
            rgb_stamp,
            pose_stamp,
        )
        self.index += 1

    def rgbd_callback(self, img_msg, depth_msg, pose_msg):
        try:
            rgb_stamp, rgb_rel_path = self._save_rgb(img_msg)
            depth_stamp, depth_rel_path = self._save_depth(depth_msg)
            pose_stamp = self._save_pose(pose_msg)
            self.assoc_file.write(
                "{:.9f} {} {:.9f} {}\n".format(
                    rgb_stamp,
                    rgb_rel_path,
                    depth_stamp,
                    depth_rel_path,
                )
            )
        except Exception as exc:
            rospy.logwarn("Failed to save TUM RGB-D frame %06d: %s", self.index, exc)
            return

        rospy.loginfo(
            "Saved TUM frame %06d rgb_ts=%.9f depth_ts=%.9f pose_ts=%.9f",
            self.index,
            rgb_stamp,
            depth_stamp,
            pose_stamp,
        )
        self.index += 1

    def close(self):
        for fp in (self.rgb_file, self.depth_file, self.gt_file, self.assoc_file):
            if fp is not None and not fp.closed:
                fp.close()

    def __del__(self):
        self.close()


def main():
    rospy.init_node("tum_recorder")
    recorder = TumRecorder()
    rospy.on_shutdown(recorder.close)
    rospy.spin()


if __name__ == "__main__":
    main()
