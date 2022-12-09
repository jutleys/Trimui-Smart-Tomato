#!/bin/sh
#echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/COMMODORE
cd $RA_DIR/

#disable netplay
NET_PARAM=

HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/vice_x64_libretro.so "$*"

#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $RA_DIR/.retroarch/cores/vice_x64_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $EMU_DIR/vice_x64_libretro.so "$*"