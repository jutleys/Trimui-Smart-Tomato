#!/bin/sh

#mv /mnt/SDCARD/Emus /mnt/SDCARD/Apps/IconChanger/Emus
#mv /mnt/SDCARD/Apps/IconChanger/.Emus /mnt/SDCARD/Emus
#mv /mnt/SDCARD/Apps/IconChanger/Emus /mnt/SDCARD/Apps/IconChanger/.Emus

if [ -f Default.txt ]; then
    cp /mnt/SDCARD/Apps/IconChanger/.EmusJoss /mnt/SDCARD/Emus
    rm Default.txt
else
    cp /mnt/SDCARD/Apps/IconChanger/.EmusDefault /mnt/SDCARD/Emus
    touch Default.txt
fi