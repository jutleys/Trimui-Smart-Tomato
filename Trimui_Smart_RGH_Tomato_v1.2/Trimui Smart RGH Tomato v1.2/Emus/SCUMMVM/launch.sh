#!/bin/sh
#echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/SCUMMVM
cd $RA_DIR/

#disable netplay
NET_PARAM=

HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/scummvm_libretro.so "$*"

#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $RA_DIR/.retroarch/cores/scummvm_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $EMU_DIR/scummvm_libretro.so "$*"

