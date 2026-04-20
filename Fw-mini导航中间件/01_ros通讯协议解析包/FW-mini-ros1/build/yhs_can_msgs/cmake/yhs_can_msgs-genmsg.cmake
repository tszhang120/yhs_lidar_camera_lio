# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yhs_can_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Iyhs_can_msgs:/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yhs_can_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" ""
)

get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_custom_target(_yhs_can_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yhs_can_msgs" "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_cpp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(yhs_can_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yhs_can_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yhs_can_msgs_generate_messages yhs_can_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_cpp _yhs_can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yhs_can_msgs_gencpp)
add_dependencies(yhs_can_msgs_gencpp yhs_can_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yhs_can_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_eus(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(yhs_can_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yhs_can_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yhs_can_msgs_generate_messages yhs_can_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_eus _yhs_can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yhs_can_msgs_geneus)
add_dependencies(yhs_can_msgs_geneus yhs_can_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yhs_can_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_lisp(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(yhs_can_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yhs_can_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yhs_can_msgs_generate_messages yhs_can_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_lisp _yhs_can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yhs_can_msgs_genlisp)
add_dependencies(yhs_can_msgs_genlisp yhs_can_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yhs_can_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_nodejs(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(yhs_can_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yhs_can_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yhs_can_msgs_generate_messages yhs_can_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_nodejs _yhs_can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yhs_can_msgs_gennodejs)
add_dependencies(yhs_can_msgs_gennodejs yhs_can_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yhs_can_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)
_generate_msg_py(yhs_can_msgs
  "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(yhs_can_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yhs_can_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yhs_can_msgs_generate_messages yhs_can_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/bms_flag_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/front_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/io_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/lr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rear_angle_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rf_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/rr_wheel_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_cmd.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_msgs/msg/steering_ctrl_fb.msg" NAME_WE)
add_dependencies(yhs_can_msgs_generate_messages_py _yhs_can_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yhs_can_msgs_genpy)
add_dependencies(yhs_can_msgs_genpy yhs_can_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yhs_can_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yhs_can_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yhs_can_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(yhs_can_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yhs_can_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yhs_can_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(yhs_can_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(yhs_can_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yhs_can_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yhs_can_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yhs_can_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(yhs_can_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yhs_can_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yhs_can_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(yhs_can_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(yhs_can_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yhs_can_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yhs_can_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yhs_can_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(yhs_can_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yhs_can_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
