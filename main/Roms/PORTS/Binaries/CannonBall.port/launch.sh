#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`

if [ -f "/mnt/SDCARD/Emu/PORTS/Binaries/CannonBall.port/FILES_HERE/epr-10187.88" ]; then

	cd /mnt/SDCARD/Apps/1-RetroArch/
	HOME=/mnt/SDCARD /mnt/SDCARD/Apps/1-RetroArch/retroarch -L /mnt/SDCARD/.retroarch/cores/cannonball_libretro.so "/mnt/SDCARD/Emu/PORTS/Binaries/CannonBall.port/FILES_HERE/epr-10187.88"

else
	cd "/mnt/SDCARD/Emu/PORTS/Binaries/missingFile"
	./infoPanel
fi
