#!/bin/sh

#mv /mnt/SDCARD/Emus /mnt/SDCARD/Apps/IconChanger/Emus
#mv /mnt/SDCARD/Apps/IconChanger/.Emus /mnt/SDCARD/Emus
#mv /mnt/SDCARD/Apps/IconChanger/Emus /mnt/SDCARD/Apps/IconChanger/.Emus

if [ -f Default.txt ]; then
    cp -r /mnt/SDCARD/Apps/IconChanger/.EmusJoss/* /mnt/SDCARD/Emus/
    rm -f Default.txt
    sh /mnt/SDCARD/Tomato/bin/printstr " Joss Icons Applied "
else
    cp -r /mnt/SDCARD/Apps/IconChanger/.EmusDefault/* /mnt/SDCARD/Emus/
    touch Default.txt
    sh /mnt/SDCARD/Tomato/bin/printstr " Default Icons Applied "
fi