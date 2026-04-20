# YF-LIO

这里是 YF-LIO ROS1版本的源码仓库，目前对我们自己的 mid360 和 HKU 的 avia 数据包进行适配

克隆此仓库需要指定 branch 为 ros1，此仓库暂时闭源，若要拉取请保证您有权限访问此仓库，推荐使用下面的ssh方法进行克隆

使用浅克隆参数`--depth 1`避免仓库过大

```bash
git clone --depth 1 -b ros1 git@github.com:xiaofan4122/yifanLIO.git
```

## 安装与运行

### 编译

将代码放入src目录下编译，无需依赖

```bash
catkin_make
```

### 运行

直接使用`roslaunch`运行

```bash
roslaunch lio start.launch
```

也可以使用`rosrun`运行，则不会运行rviz

```bash
rosrun lio lio
```

### 参数修改

如果只是跑LIVO1提供的数据包，使用hku结尾的yaml文件，如果是自己的数据包，使用ours结尾的yaml文件，这些在`root_config.yaml`文件中定义

```yaml title: root_config.yaml
livo_yaml: "mid360.yaml"
```

程序以第一帧IMU为初始位置中心，重力方向为z轴负方向，雷达前方为x轴正方向构建坐标系，默认固定坐标系为`world`系

如果IMU斜放，第一帧 IMU 位姿将不为单位阵，在此基础上，可以在yaml文件中指定小车本体相对于雷达的变换矩阵（视构型更改），
以及激光雷达相对于IMU的变换矩阵（视激光雷达型号更改），LIO将输出`lidar`、`imu`、`body`三个坐标系的位姿

请注意变换矩阵的约定：
- `a_t_b`为a坐标系下b的偏移
- `a_R_b`为a坐标系下b的旋转

$$
^{a}T_b = \begin{bmatrix}
^aR_b & ^at_b \\
0 & 1
\end{bmatrix}，其中\ ^aR_b = a\_R\_b， ^at_b = a\_t\_b
$$
$^{a}T_b$代表从b系转到a系，或者b系在a系下的位姿，对于b系中的点或向量，左乘该矩阵可以转到a系。'

<img width="1150" height="146" alt="image" src="https://github.com/user-attachments/assets/411061fa-053d-4685-9daa-4e9c93478c47" />


如果需要**高频位姿输出**，请在`yaml`中将`high_frequency_odom`字段设置为`true`，并指定雷达的频率

其原理为在下一帧雷达数据到来前，先将imu预积分位姿发布出来，因此需要预测下一帧雷达到来时间，雷达频率必须设置准确

另外，话题名称可以在`yaml`中自定义

## 调试

使用clion进行调试前可以先编译项目，编译完成后，`source devel/setup.bash`再启动clion

### 注意事项！！！

**由于 LIO 依赖于一些自定义消息，使用Clion编译时，可能会提示找不到自定义消息头文件，此时可以在编译完成后，将`devel/include/lio`文件夹下的三个头文件复制到Clion对应的
`src/cmake-build-debug/devel/include/lio`文件夹下**

- CustomMsg.h
- CustomPoint.h
- wheel_info.h

如果发现 LIO 运行卡顿，可以尝试将`yaml`中的`filter_size`参数调整大一些，设置为0.1会更精准，但可能只能在台式机上跑得动，在嵌入式设备上可以设置为0.3左右

### 启用轮速计

修改`/yaml/config.yaml`文件中的`wheel_enable`字段为 `true`，其他操作同上

## 目录结构

每次建图结束后地图都会保存到`PCD`文件夹下

`yaml`文件可以配置LIVO运行参数，一般需要一个`lio_yaml`和一个`camera_yaml`文件，统一在`root_config.yaml`中设定，其中有详细注释

核心代码在src和include文件夹下
