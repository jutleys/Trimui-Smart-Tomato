#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Wolfenstein 3D.port/FILES_HERE/AUDIOHED.WL6" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD /mnt/SDCARD/Apps/1-RetroArch/retroarch -L /mnt/SDCARD/.retroarch/cores/ecwolf_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Wolfenstein 3D.port/FILES_HERE/WL6.ecwolf"

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
