#!/bin/sh
RA_DIR=/mnt/SDCARD/Apps/1-RetroArch
EMU_DIR=/mnt/SDCARD/Emus/CPS1
cd $RA_DIR/

HOME=$RA_DIR/ $RA_DIR/ra32.trimui -v $NET_PARAM -L $EMU_DIR/fbalpha2012_cps1_libretro.so "$*"
