import os
import numpy as np
import rospy
import cv2
import message_filters
import sensor_msgs.point_cloud2 as pc2
from sensor_msgs.msg import PointCloud2, Image
from nav_msgs.msg import Odometry  # 假设位姿是以 Odom 形式发布，如果是 PoseStamped 请修改
from cv_bridge import CvBridge
from scipy.spatial.transform import Rotation as R

class KittiRecorder:
    def __init__(self, save_path="./kitti_data"):
        self.save_path = save_path
        self.seq_dir = os.path.join(save_path, "sequences", "00")
        self.img_dir = os.path.join(self.seq_dir, "image_2")
        self.pc_dir = os.path.join(self.seq_dir, "velodyne")
        
        # 创建目录
        os.makedirs(self.img_dir, exist_ok=True)
        os.makedirs(self.pc_dir, exist_ok=True)
        
        # 打开 poses 文件 (append mode)
        self.pose_file = open(os.path.join(self.seq_dir, "poses.txt"), "a")
        
        self.save_calib()
        
        self.bridge = CvBridge()
        self.index = 0

        # --- 配置 Topics ---
        lidar_topic = "/livox_points"
        img_topic = "/camera/color/image_raw"
        pose_topic = "/LIO/odom_imu"  # 请修改为你实际的 Pose/Odom topic

        # --- 同步订阅 ---
        # 使用 ApproximateTimeSynchronizer 允许微小的时间误差
        self.sub_lidar = message_filters.Subscriber(lidar_topic, PointCloud2)
        self.sub_img = message_filters.Subscriber(img_topic, Image)
        self.sub_pose = message_filters.Subscriber(pose_topic, Odometry) # 如果是 PoseStamped 改这里

        self.sync = message_filters.ApproximateTimeSynchronizer(
            [self.sub_lidar, self.sub_img, self.sub_pose], 
            queue_size=10, slop=0.1
        )
        self.sync.registerCallback(self.callback)
        
        rospy.loginfo(f"KittiRecorder started. Saving to {self.seq_dir}")
    def save_calib(self):
        calib_fname = os.path.join(self.seq_dir, "calib.txt")
        if os.path.exists(calib_fname):
            return

        # ==========================================
        # 1. 整理参数 (根据你提供的数据)
        # ==========================================
        
        # --- Camera Intrinsic (K) ---
        # 原始数据: [fx, 0, cx, 0, fy, cy, 0, 0, 1]
        K_data = [606.140692931161, 0.0, 305.9997986822294, 
                  0.0, 610.2981695883817, 248.9635324072448, 
                  0.0, 0.0, 1.0]
        K = np.array(K_data).reshape(3, 3)

        # --- LiDAR -> Camera 外参 (Tr_velo_to_cam) ---
        # 对应: camera_R_lidar, camera_t_lidar
        # 含义: 点从 Lidar 系转到 Camera 系
        R_cam_lidar = np.array([
            [-0.0211114, -0.998315, 0.0540489],
            [ 0.346727,  -0.0580166, -0.93617],
            [ 0.937729,  -0.00102367, 0.347367]
        ])
        t_cam_lidar = np.array([-0.0337592, 0.260882, 0.100403]).reshape(3, 1)
        
        # 组合成 4x4 矩阵
        T_cam_lidar = np.eye(4)
        T_cam_lidar[:3, :3] = R_cam_lidar
        T_cam_lidar[:3, 3:4] = t_cam_lidar

        # --- IMU -> LiDAR 外参 (Tr_imu_to_velo) ---
        # 你提供的是: imu_t_lidar (Lidar在IMU系下的位置), imu_R_lidar (单位阵)
        # 这构成了 T_imu_lidar (Lidar -> IMU)
        R_imu_lidar = np.array([
            [1.0, 0.0, 0.0],
            [0.0, 1.0, 0.0],
            [0.0, 0.0, 1.0]
        ])
        t_imu_lidar = np.array([-0.011, -0.02329, 0.04412]).reshape(3, 1)

        T_imu_lidar = np.eye(4)
        T_imu_lidar[:3, :3] = R_imu_lidar
        T_imu_lidar[:3, 3:4] = t_imu_lidar

        # KITTI 需要的是 Tr_imu_to_velo (即 T_lidar_imu: IMU -> Lidar)
        # 所以我们需要求逆: T_lidar_imu = inv(T_imu_lidar)
        T_lidar_imu = np.linalg.inv(T_imu_lidar)

        # ==========================================
        # 2. 构建 KITTI 矩阵
        # ==========================================

        # P2: 3x4 投影矩阵 [K|0]
        P2 = np.zeros((3, 4))
        P2[:3, :3] = K
        P2_flat = P2.flatten()

        # Tr_velo_to_cam: 取 T_cam_lidar 的前3行
        Tr_velo_to_cam = T_cam_lidar[:3, :].flatten()

        # Tr_imu_to_velo: 取 T_lidar_imu 的前3行
        Tr_imu_to_velo = T_lidar_imu[:3, :].flatten()

        # R0_rect: 矫正旋转 (设为单位阵)
        R0_rect = np.eye(3).flatten()

        # ==========================================
        # 3. 写入文件
        # ==========================================
        with open(calib_fname, 'w') as f:
            f.write(self._format_calib_line("P0", P2_flat)) # P0=P2
            f.write(self._format_calib_line("P1", P2_flat)) # P1=P2
            f.write(self._format_calib_line("P2", P2_flat)) # P2 (Main Color)
            f.write(self._format_calib_line("P3", P2_flat)) # P3=P2
            f.write(self._format_calib_line("R0_rect", R0_rect))
            f.write(self._format_calib_line("Tr_velo_to_cam", Tr_velo_to_cam))
            f.write(self._format_calib_line("Tr_imu_to_velo", Tr_imu_to_velo))
        
        rospy.loginfo(f"calib.txt generated at {calib_fname}")

    def _format_calib_line(self, key, arr):
        # 辅助函数：将数组转为 "Key: e1 e2 ...\n"
        str_arr = " ".join([f"{x:.6e}" for x in arr])
        return f"{key}: {str_arr}\n"
    
    def callback(self, lidar_msg, img_msg, pose_msg):
        # 1. 保存图像 (.png)
        try:
            cv_img = self.bridge.imgmsg_to_cv2(img_msg, "bgr8")
            img_fname = os.path.join(self.img_dir, f"{self.index:06d}.png")
            cv2.imwrite(img_fname, cv_img)
        except Exception as e:
            rospy.logwarn(f"Save Image fail: {e}")
            return

        # 2. 保存点云 (.bin)
        # KITTI 格式: [x, y, z, intensity] float32
        points_list = []
        # 注意：Livox 点云可能有自定义字段，这里标准读取 x,y,z,intensity
        # 如果报错找不到 intensity，可以把 'intensity' 去掉或改为 'reflectivity'
        for p in pc2.read_points(lidar_msg, field_names=("x", "y", "z", "intensity"), skip_nans=True):
            points_list.append(p)
        
        np_points = np.array(points_list, dtype=np.float32)
        bin_fname = os.path.join(self.pc_dir, f"{self.index:06d}.bin")
        np_points.tofile(bin_fname) # 保存为二进制

        # 3. 保存位姿 (Text Line)
        # KITTI 格式: r11 r12 r13 tx r21 r22 r23 ty r31 r32 r33 tz (3x4 row-major)
        # 提取位姿 (假设是 Odometry)
        pos = pose_msg.pose.pose.position
        ori = pose_msg.pose.pose.orientation
        
        # 四元数转旋转矩阵
        rot_mat = R.from_quat([ori.x, ori.y, ori.z, ori.w]).as_dcm()
        trans = np.array([pos.x, pos.y, pos.z]).reshape(3, 1)
        
        # 拼接成 3x4 矩阵
        tf_mat = np.hstack((rot_mat, trans))
        
        # 展平并写入
        pose_line = " ".join(f"{x:.6e}" for x in tf_mat.flatten())
        self.pose_file.write(pose_line + "\n")
        self.pose_file.flush()

        rospy.loginfo(f"Saved Frame {self.index:06d}")
        self.index += 1

    def __del__(self):
        self.pose_file.close()

if __name__ == '__main__':
    rospy.init_node('kitti_recorder')
    rec = KittiRecorder()
    rospy.spin()