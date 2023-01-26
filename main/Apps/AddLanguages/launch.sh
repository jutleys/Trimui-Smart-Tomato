#!/bin/sh
# Script replace chinese language by another one which is not included in the firmware.
# By Schmurtz
# -----
# v1.0 initial version


progdir=`dirname "$0"`
cd $progdir
HOME=$progdir
./st -e sh ./AddLanguages.sh