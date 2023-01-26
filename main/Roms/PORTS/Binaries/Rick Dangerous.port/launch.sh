#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Rick Dangerous.port/FILE_HERE/data.zip" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD/Apps/1-RetroArch/ /mnt/SDCARD/Apps/1-RetroArch/retroarch -v -L /mnt/SDCARD/.retroarch/cores/xrick_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Rick Dangerous.port/FILE_HERE/data.zip"

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
