#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Cave Story.port/FILES_HERE/Doukutsu.exe" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD/Apps/1-RetroArch/ /mnt/SDCARD/Apps/1-RetroArch/retroarch -v -L /mnt/SDCARD/.retroarch/cores/nxengine_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Cave Story.port/FILES_HERE/Doukutsu.exe"
	
else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi



