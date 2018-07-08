#!/bin/bash
docker run --rm -i -v `pwd`:`pwd` -e "CI_SOURCE_PATH=`pwd`" -e "ROS_DISTRO=indigo" -t ubuntu:trusty sh -c "cd `pwd`; ./.travis.sh"
docker run --rm -i -v `pwd`:`pwd` -e "CI_SOURCE_PATH=`pwd`" -e "ROS_DISTRO=kinetic" -t ubuntu:xenial sh -c "cd `pwd`; ./.travis.sh"
docker run --rm -i -v `pwd`:`pwd` -e "CI_SOURCE_PATH=`pwd`" -e "ROS_DISTRO=melodic" -t ubuntu:bionic sh -c "cd `pwd`; ./.travis.sh"
