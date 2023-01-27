#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Doom.port/FILE_HERE/doom1.wad" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD /mnt/SDCARD/Apps/1-RetroArch/retroarch -L /mnt/SDCARD/.retroarch/cores/prboom_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Doom.port/FILE_HERE/doom1.wad"

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi



