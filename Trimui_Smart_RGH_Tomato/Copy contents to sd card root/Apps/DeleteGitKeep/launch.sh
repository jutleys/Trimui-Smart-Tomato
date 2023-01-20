#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD/
find /mnt/SDCARD/Roms -type f -name '.gitkeep' -delete
find /mnt/SDCARD/Roms -type f -name '.gitkeep' -exec rm {} +
find /mnt/SDCARD/Roms -type F -name ".gitkeep" -exec rm -rf {} +