#!/bin/sh

if [ -f "/mnt/SDCARD/.retroarch/retroarchGuest.cfg" ]; then
	mv /mnt/SDCARD/.retroarch/retroarch.cfg /mnt/SDCARD/.retroarch/retroarchDefault.cfg
	mv /mnt/SDCARD/.retroarch/retroarchGuest.cfg /mnt/SDCARD/.retroarch/retroarch.cfg
	sed -i 's/OFF/ON/' config.json
else
	mv /mnt/SDCARD/.retroarch/retroarch.cfg /mnt/SDCARD/.retroarch/retroarchGuest.cfg
	mv /mnt/SDCARD/.retroarch/retroarchDefault.cfg /mnt/SDCARD/.retroarch/retroarch.cfg
	sed -i 's/ON/OFF/' config.json
fi