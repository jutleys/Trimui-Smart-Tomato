#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD

mv /mnt/SDCARD/.retroarch/system/* /mnt/SDCARD/Bios
mv /mnt/SDCARD/.retroarch/saves/* /mnt/SDCARD/Saves/saves
mv /mnt/SDCARD/.retroarch/states/* /mnt/SDCARD/Saves/states
mv /mnt/SDCARD/.retroarch/screenshots/* /mnt/SDCARD/screenshots