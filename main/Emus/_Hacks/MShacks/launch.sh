#!/bin/sh
echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/Apps/1-RetroArch
EMU_DIR=/mnt/SDCARD/Emus/MShacks
cd $RA_DIR/

HOME=/mnt/SDCARD/ $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/picodrive_libretro.so "$*"
#HOME=/mnt/SDCARD $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/picodrive_libretro.so "$*"