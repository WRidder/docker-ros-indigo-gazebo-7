FROM ros:indigo-ros-base
MAINTAINER Wilbert van de Ridder wilbert.ridder+drig7@gmail.com

# install ros and gazebo packages
RUN apt-get update && apt-get install -y \
    build-essential tree curl python-rosdep python-rosinstall-generator python-wstool python-rosinstall wget \
    && apt-get remove gazebo2 \
    && curl -ssL http://get.gazebosim.org | sh \
    && apt-get install -y ros-indigo-gazebo7-ros-pkgs ros-indigo-gazebo7-ros-control \
    && wget https://raw.githubusercontent.com/osrf/osrf-rosdep/master/gazebo7/00-gazebo7.list -O /etc/ros/rosdep/sources.list.d/00-gazebo7.list \
    && apt-get install -y ros-indigo-robot-model ros-indigo-rqt ros-indigo-rqt-common-plugins ros-indigo-rqt-robot-plugins ros-indigo-rviz ros-indigo-controller-manager ros-indigo-diff-drive-controller ros-indigo-ros-controllers ros-indigo-xacro \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
