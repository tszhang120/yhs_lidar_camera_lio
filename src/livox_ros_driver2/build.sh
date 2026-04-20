#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"

if [ $# -gt 1 ] || { [ $# -eq 1 ] && [ "$1" != "ROS1" ]; }; then
  echo "This repository is configured as a ROS1 catkin package."
  echo "Use './build.sh' or './build.sh ROS1'."
  exit 1
fi

echo "Package Path: ${SCRIPT_DIR}"
echo "Workspace Path: ${WORKSPACE_DIR}"

cd "${WORKSPACE_DIR}"
catkin_make
