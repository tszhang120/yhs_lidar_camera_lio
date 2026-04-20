# Install script for directory: /home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yhs_can_control/cmake" TYPE FILE FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/build/yhs_can_control/catkin_generated/installspace/yhs_can_control-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/devel/share/roseus/ros/yhs_can_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/devel/lib/python3/dist-packages/yhs_can_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/devel/lib/python3/dist-packages/yhs_can_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/build/yhs_can_control/catkin_generated/installspace/yhs_can_control.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yhs_can_control/cmake" TYPE FILE FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/build/yhs_can_control/catkin_generated/installspace/yhs_can_control-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yhs_can_control/cmake" TYPE FILE FILES
    "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/build/yhs_can_control/catkin_generated/installspace/yhs_can_controlConfig.cmake"
    "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/build/yhs_can_control/catkin_generated/installspace/yhs_can_controlConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yhs_can_control" TYPE FILE FILES "/home/zts/真机数据接口/Fw-mini导航中间件/01_ros通讯协议解析包/FW-mini-ros1/src/yhs_can_control/package.xml")
endif()

