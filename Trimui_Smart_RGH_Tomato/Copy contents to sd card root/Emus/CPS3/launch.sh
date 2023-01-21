#!/bin/sh
RA_DIR=/mnt/SDCARD/Apps/1-RetroArch
EMU_DIR=/mnt/SDCARD/Emus/CPS3
cd $RA_DIR/

#disable netplay
NET_PARAM=

HOME=/mnt/SDCARD $RA_DIR/retroarch -v $NET_PARAM -L /mnt/SDCARD/.retroarch/cores/fbalpha2012_cps3_libretro.so "$*"
