#!/bin/sh

if [ -z "$(ls -A /mnt/SDCARD/Emus/_Hacks)" ]; then
	find /mnt/SDCARD/Emus/ -name '*hacks' -type d -exec mv "{}" /mnt/SDCARD/Emus/_Hacks \;
else
	mv /mnt/SDCARD/Emus/_Hacks/* /mnt/SDCARD/Emus/
fi
