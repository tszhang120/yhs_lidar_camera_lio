#!/usr/bin/env bash

set -euo pipefail

stop_launch() {
    local name="$1"
    local pattern="$2"

    if ! pgrep -af -- "$pattern" >/dev/null 2>&1; then
        echo "[$name] not running"
        return
    fi

    echo "[$name] stopping..."
    pkill -INT -f -- "$pattern" || true
    sleep 2

    if pgrep -af -- "$pattern" >/dev/null 2>&1; then
        echo "[$name] still running, sending TERM"
        pkill -TERM -f -- "$pattern" || true
        sleep 1
    fi

    if pgrep -af -- "$pattern" >/dev/null 2>&1; then
        echo "[$name] still running, please check manually"
    else
        echo "[$name] stopped"
    fi
}

stop_launch "LIO" "roslaunch lio start.launch"
stop_launch "YHS CAN Control" "roslaunch yhs_can_control yhs_can_control.launch"
stop_launch "RealSense Camera" "roslaunch realsense2_camera rs_camera.launch"
stop_launch "Livox MID360" "roslaunch livox_ros_driver2 msg_MID360.launch"
