FROM ros:indigo-ros-base
MAINTAINER Wilbert van de Ridder wilbert.ridder+drig7@gmail.com

# install ros and gazebo packages
RUN apt-get update && apt-get install -y \
    build-essential tree curl python-rosdep python-rosinstall-generator python-wstool python-rosinstall wget \
    && curl -ssL http://get.gazebosim.org | sh \
    && apt-get install -y ros-indigo-gazebo7-ros-pkgs ros-indigo-gazebo7-ros-control \
    && wget https://raw.githubusercontent.com/osrf/osrf-rosdep/master/gazebo7/00-gazebo7.list -O /etc/ros/rosdep/sources.list.d/00-gazebo7.list
