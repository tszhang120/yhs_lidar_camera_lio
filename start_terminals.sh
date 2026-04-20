#!/usr/bin/env bash

set -euo pipefail

WORKSPACE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SETUP_FILE="$WORKSPACE_DIR/devel/setup.bash"

if ! command -v gnome-terminal >/dev/null 2>&1; then
    echo "gnome-terminal not found. Please start the nodes manually in separate terminals."
    exit 1
fi

if [[ ! -f "$SETUP_FILE" ]]; then
    echo "Missing $SETUP_FILE"
    echo "Run 'catkin_make' in $WORKSPACE_DIR first."
    exit 1
fi

open_terminal() {
    local title="$1"
    local launch_cmd="$2"

    gnome-terminal \
        --title="$title" \
        -- bash -lc "cd '$WORKSPACE_DIR'; source '$SETUP_FILE'; echo '[$title]'; $launch_cmd; exec bash"
}

open_terminal "Livox MID360" "roslaunch livox_ros_driver2 msg_MID360.launch"
sleep 0.5
open_terminal "RealSense Camera" "roslaunch realsense2_camera rs_camera.launch"
sleep 0.5
open_terminal "YHS CAN Control" "roslaunch yhs_can_control yhs_can_control.launch"
sleep 0.5
open_terminal "LIO" "roslaunch lio start.launch"
