#!/bin/bash

source $PWD/sources/poky/oe-init-build-env $PWD/build

cp ../conf/raspberrypi3/* conf/

if [ $? -eq 0 ]; then
    bitbake $1
fi
