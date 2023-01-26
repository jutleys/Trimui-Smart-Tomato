#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/Apps/1-RetroArch
EMU_DIR=/mnt/SDCARD/Emus/FChacks
cd $RA_DIR/

HOME=/mnt/SDCARD/ $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/nestopia_libretro.so "$*"
#HOME=/mnt/SDCARD/ $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/fceumm_libretro.so "$*"
#HOME=/mnt/SDCARD/ $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/libfceumm.so "$*"
