#!/bin/sh

if [ -z "$(ls -A /mnt/SDCARD/Emus/_Hacks)" ]; then
	find /mnt/SDCARD/Emus/ -name '*hacks' -type d -exec mv "{}" /mnt/SDCARD/Emus/_Hacks \;
	sed -i 's/ON/OFF/' config.json
else
	mv /mnt/SDCARD/Emus/_Hacks/* /mnt/SDCARD/Emus/
	sed -i 's/OFF/ON/' config.json
fi
