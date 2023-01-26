#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Roms/PORTS/Binaries/CannonBall.port/FILES_HERE/epr-10187.88" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD/Apps/1-RetroArch/ /mnt/SDCARD/Apps/1-RetroArch/retroarch -v -L /mnt/SDCARD/.retroarch/cores/cannonball_libretro.so "/mnt/SDCARD/Roms/PORTS/Binaries/CannonBall.port/FILES_HERE/epr-10187.88"
	
else
	cd "/mnt/SDCARD/Roms/PORTS/Binaries/missingFile"
	./infoPanel
fi
