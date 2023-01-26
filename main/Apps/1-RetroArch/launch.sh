#!/bin/sh
# RetroArch/launch.sh

cd $(dirname "$0")

HOME=/mnt/SDCARD

# kill led ----------------------------------------------------
echo 0 > /sys/devices/platform/sunxi-led/leds/led1/brightness
echo 0 > /sys/devices/platform/sunxi-led/leds/led2/brightness
echo 0 > /sys/devices/platform/sunxi-led/leds/led3/brightness

./retroarch -v >> ./log.txt 2>&1
sync