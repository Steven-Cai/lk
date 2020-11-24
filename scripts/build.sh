#!/bin/bash

source $PWD/sources/poky/oe-init-build-env $PWD/build

cp ../conf/raspberrypi/* conf/

if [ $? -eq 0 ]; then
    bitbake $1 $2 $3
fi
