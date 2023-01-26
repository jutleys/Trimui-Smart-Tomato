#!/bin/sh

if [ -f Default.txt ]; then
    cp -r /mnt/SDCARD/Apps/IconChanger/.EmusJoss/* /mnt/SDCARD/Emus/
    rm -f Default.txt
	sed -i 's/Default/Joss/' config.json
else
    cp -r /mnt/SDCARD/Apps/IconChanger/.EmusDefault/* /mnt/SDCARD/Emus/
    touch Default.txt
    sed -i 's/Joss/Default/' config.json
fi