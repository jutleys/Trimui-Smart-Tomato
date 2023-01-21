#!/bin/sh
echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/Apps/1-RetroArch
EMU_DIR=/mnt/SDCARD/Emus/PKM
cd $RA_DIR/

#disable netplay
NET_PARAM=

HOME=/mnt/SDCARD $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/pokemini_libretro.so "$*"