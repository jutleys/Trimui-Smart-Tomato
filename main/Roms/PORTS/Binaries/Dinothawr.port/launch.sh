#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/Dinothawr.port/FILES_HERE/dinothawr.game" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD/Apps/1-RetroArch/ /mnt/SDCARD/Apps/1-RetroArch/retroarch -v -L /mnt/SDCARD/.retroarch/cores/dinothawr_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/Dinothawr.port/FILES_HERE/dinothawr.game"

else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
