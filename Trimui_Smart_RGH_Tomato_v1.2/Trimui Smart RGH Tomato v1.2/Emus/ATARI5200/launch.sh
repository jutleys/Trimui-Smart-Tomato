#!/bin/sh
echo "===================================="
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/ATARI5200
cd $RA_DIR/

HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/atari800_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $RA_DIR/.retroarch/cores/atari800_libretro.so "$*"
#HOME=$RA_DIR/ $RA_DIR/retroarch -v $NET_PARAM -L $EMU_DIR/atari800_libretro.so "$*"