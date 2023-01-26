#!/bin/sh
#echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/MU
cd $RA_DIR/

#disable netplay
NET_PARAM=

HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/mu_libretro.so "$*"

#HOME=/mnt/SDCARD $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/mu_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $EMU_DIR/mu_libretro.so "$*"