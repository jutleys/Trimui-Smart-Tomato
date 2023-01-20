#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD

find /mnt/SDCARD/Roms -type F -name ".gitkeep" -exec rm -rf {} +

mkdir -p /mnt/SDCARD/Bios
mkdir -p /mnt/SDCARD/Saves/saves
mkdir -p /mnt/SDCARD/Saves/states
mkdir -p /mnt/SDCARD/screenshots

mv /mnt/SDCARD/.retroarch/system/* /mnt/SDCARD/Bios
mv /mnt/SDCARD/.retroarch/saves/* /mnt/SDCARD/Saves/saves
mv /mnt/SDCARD/.retroarch/states/* /mnt/SDCARD/Saves/states
mv /mnt/SDCARD/.retroarch/screenshots/* /mnt/SDCARD/screenshots

./printstr " Files Moved "