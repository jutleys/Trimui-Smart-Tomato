#!/bin/sh

if [ -f /mnt/SDCARD/Themes/bgmDisabled.txt ]; then
	find /mnt/SDCARD/Themes -name '*.mp3_off' -type f -exec sh -c 'mv "$1" "${1%.mp3_off}.mp3"' _ {} \;
	sed -i 's/OFF/ON/' /mnt/SDCARD/Apps/3-ToggleMusic/config.json
	rm /mnt/SDCARD/Themes/bgmDisabled.txt
else
	find /mnt/SDCARD/Themes -name '*.mp3' -type f -exec mv "{}" "{}_off"  \;
	sed -i 's/ON/OFF/' /mnt/SDCARD/Apps/3-ToggleMusic/config.json
	touch /mnt/SDCARD/Themes/bgmDisabled.txt
fi