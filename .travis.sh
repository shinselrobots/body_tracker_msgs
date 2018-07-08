#!/bin/bash

set -e
export DEBIAN_FRONTEND noninteractive
export TERM xterm

apt-get update && apt-get install -y -q wget sudo lsb-release gnupg

#before_install:
sh -c "echo \"deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main\" > /etc/apt/sources.list.d/ros-latest.list"
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
apt-get update && apt-get install -y -q python-catkin-pkg python-rosdep python-wstool ros-$ROS_DISTRO-catkin build-essential
source /opt/ros/$ROS_DISTRO/setup.bash
rosdep init
rosdep update

#install:
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
ln -s $CI_SOURCE_PATH .

#before_script:
cd ~/catkin_ws
rosdep install -q -y -r --from-paths src --ignore-src --rosdistro $ROS_DISTRO

#script:
source /opt/ros/$ROS_DISTRO/setup.bash
cd ~/catkin_ws
catkin_make
