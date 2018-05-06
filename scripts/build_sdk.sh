#!/bin/bash

source $PWD/sources/poky/oe-init-build-env $PWD/build

if [ $? -eq 0 ]; then
    bitbake $1 -c populate_sdk
fi
