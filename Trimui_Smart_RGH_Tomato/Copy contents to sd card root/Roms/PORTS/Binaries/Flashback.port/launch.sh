#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Flashback.port/FILES_HERE/level1.map" ]; then

	cd /mnt/SDCARD/RetroArch/
	HOME=/mnt/SDCARD/Apps/1-RetroArch/ /mnt/SDCARD/Apps/1-RetroArch/retroarch -v -L /mnt/SDCARD/.retroarch/cores/reminiscence_libretro.so --menu

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
