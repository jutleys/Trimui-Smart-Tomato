#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD
a=`ps | grep screenshot | grep -v grep`
if [ "$a" == "" ] ; then
    ./screenshot &
    ./printstr " MENU+L+R Screenshot Ready "
else
    killall screenshot
    ./printstr "  Screenshot Released  "
fi
