cmake_minimum_required(VERSION 3.8)
project(lio LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()


add_compile_definitions(EIGEN_DONT_PARALLELIZE)
set(PCL_WITH_OPENMP OFF CACHE BOOL "Disable PCL OpenMP")


set(CURRENT_USER $ENV{USER})
message(STATUS "当前用户是: ${CURRENT_USER}")

# 读取 /etc/os-release 内容
file(READ "/etc/os-release" OS_RELEASE_CONTENT)
# 匹配 PRETTY_NAME="Ubuntu 22.xx"
string(REGEX MATCH "PRETTY_NAME=\"Ubuntu 22\\.[^\"]*\"" _ ${OS_RELEASE_CONTENT})
if(CMAKE_MATCH_0)
    set(IS_UBUNTU_22 TRUE)
    add_compile_definitions(IS_UBUNTU_22=1)
else()
    set(IS_UBUNTU_22 FALSE)
    add_compile_definitions(IS_UBUNTU_22=0)
endif()
message(STATUS "IS_UBUNTU_22 = ${IS_UBUNTU_22}")

# 开启OpenMP（多线程）
find_package(OpenMP REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")


if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(catkin REQUIRED COMPONENTS
        roscpp
        rospy
        geometry_msgs
        nav_msgs
        sensor_msgs
        std_msgs
        pcl_ros
        pcl_conversions
        tf2_ros
        message_generation
)

set(YAML_CPP_INCLUDE_DIR /usr/include/yaml-cpp)
set(YAML_CPP_LIBRARY /usr/lib/x86_64-linux-gnu/libyaml-cpp.so)
find_package(Eigen3 REQUIRED)
find_package(PCL REQUIRED COMPONENTS common io)

add_message_files(
        DIRECTORY msg
        FILES
        CustomMsg.msg   # livox_ros_driver2 CustomMsg
        CustomPoint.msg # livox_ros_driver2 CustomPoint
        wheel_info.msg  # yhs wheel info
)

# 包含头文件目录
include_directories(
        ${catkin_INCLUDE_DIRS}
        ${EIGEN3_INCLUDE_DIR}
        ${YAML_CPP_INCLUDE_DIR}
        ${PCL_INCLUDE_DIRS}
        include
        include/SVO
        include/ikd-Tree
        include/YamlReader
)

generate_messages(
        DEPENDENCIES
        geometry_msgs
        std_msgs
        nav_msgs
        sensor_msgs
)

catkin_package(
        INCLUDE_DIRS include
        DEPENDS EIGEN3 PCL
        CATKIN_DEPENDS
        std_msgs
        nav_msgs
        geometry_msgs
        message_runtime
        message_generation
)

# 添加可执行文件
add_executable(lio
        include/YamlReader/YamlReader.cpp
        include/YamlReader/YamlReader.h
        src/main.cpp
        include/main.h
        src/TopicReceive.cpp
        include/TopicProcess.h
        src/common_lib.cpp
        include/common_lib.h
        src/ESEKF.cpp
        include/ESEKF.h
        include/ikd-Tree/ikd_Tree.h
        include/ikd-Tree/ikd_Tree.cpp
        include/SharedBuffers.h
        include/type.h
        src/LIONode_Func/Pub_Func.cpp
        src/LIONode_Func/Cbk_Func.cpp
        src/LIONode_Func/Other_Func.cpp
        src/LIONode_Func/Save_Func.cpp
        src/IMUProcess.cpp
        include/IMUProcess.h
)

# 链接库
target_link_libraries(lio
        ${catkin_LIBRARIES}
        Eigen3::Eigen
        ${PCL_LIBRARIES}
        yaml-cpp
)

# 定义宏
target_compile_definitions(lio PRIVATE PACKAGE_ROOT_DIR="${CMAKE_CURRENT_SOURCE_DIR}")

# 安装可执行文件
install(TARGETS lio
        DESTINATION lib/${PROJECT_NAME}
)
