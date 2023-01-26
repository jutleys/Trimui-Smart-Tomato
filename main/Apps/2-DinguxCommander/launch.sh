#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD
#./DinguxCommander &> ./log.txt
./DinguxCommander
sync
