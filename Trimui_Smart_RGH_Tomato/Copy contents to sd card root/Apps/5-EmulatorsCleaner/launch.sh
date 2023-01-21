#!/bin/sh
progdir=`dirname "$0"`
cd $progdir
HOME=$progdir
./st -q -e sh ./EmulatorsCleaner.sh
