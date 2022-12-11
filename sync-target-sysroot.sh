#!/bin/bash
# 
# Perform sync target system root with host

USER=$1
TARGET_ADDRESS=$2
TARGET_SYSROOT_PATH_ON_HOST=$3

rsync -avz --rsync-path="sudo rsync" --delete $USER@$TARGET_ADDRESS:/lib $TARGET_SYSROOT_PATH_ON_HOST
rsync -avz --rsync-path="sudo rsync" --delete $USER@$TARGET_ADDRESS:/usr/include $TARGET_SYSROOT_PATH_ON_HOST/usr
rsync -avz --rsync-path="sudo rsync" --delete $USER@$TARGET_ADDRESS:/usr/lib $TARGET_SYSROOT_PATH_ON_HOST/usr
# rsync -avz --rsync-path="sudo rsync" --delete $1@$2:/opt/vc $3/opt