#!/bin/bash

source $PWD/sources/poky/oe-init-build-env $PWD/pi_build

if [ $? -eq 0 ]; then
    bitbake $1
fi
