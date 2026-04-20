
### 终端 1：Livox

```bash
cd ~/yhs_lidar_camera_lio
source devel/setup.bash
roslaunch livox_ros_driver2 msg_MID360.launch
```

### 终端 2：RealSense

```bash
cd ~/yhs_lidar_camera_lio
source devel/setup.bash
roslaunch realsense2_camera rs_camera.launch
```

### 终端 3：底盘 CAN

```bash
cd ~/yhs_lidar_camera_lio
source devel/setup.bash
roslaunch yhs_can_control yhs_can_control.launch
```

### 终端 4：LIO

```bash
cd ~/yhs_lidar_camera_lio
source devel/setup.bash
roslaunch lio start.launch
```

## 一键打开 4 个终端
cd ~/yhs_lidar_camera_lio
./start_terminals.sh



## 一键停止

```bash
cd ~/yhs_lidar_camera_lio
./stop_terminals.sh
```

