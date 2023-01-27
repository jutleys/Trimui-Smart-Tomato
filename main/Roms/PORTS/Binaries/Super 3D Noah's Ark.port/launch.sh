#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Super 3D Noah's Ark.port/FILES_HERE/audiohed.n3d" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD /mnt/SDCARD/Apps/1-RetroArch/retroarch -L /mnt/SDCARD/.retroarch/cores/ecwolf_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Super 3D Noah's Ark.port/FILES_HERE/n3d.ecwolf"

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
