#!/bin/sh
# Script to make some cleanup in emulators which doesn't have roms.
# By Schmurtz
# -----
# v1.0 initial version
# v1.1 Now use config.json to find the right rom folder
# v1.2 skip .db files in roms folder & fixes

progdir=`dirname "$0"`
cd $progdir
HOME=$progdir
./st -q -e sh ./EmulatorsCleaner.sh
