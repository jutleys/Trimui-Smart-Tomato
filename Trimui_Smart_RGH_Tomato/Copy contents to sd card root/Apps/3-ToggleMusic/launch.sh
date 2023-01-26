#!/bin/sh

cd /usr/trimui/res/sound

if [ -f MusMus-BGM-091.mp3-off ]; then
	mv MusMus-BGM-091.mp3-off MusMus-BGM-091.mp3
else
	mv MusMus-BGM-091.mp3 MusMus-BGM-091.mp3-off
fi

if [ -f main_bgm.mp3-off ]; then
	mv main_bgm.mp3-off main_bgm.mp3
	sed -i 's/OFF/ON/' /mnt/SDCARD/Apps/3-ToggleMusic/config.json
else
	mv main_bgm.mp3 main_bgm.mp3-off
	sed -i 's/ON/OFF/' /mnt/SDCARD/Apps/3-ToggleMusic/config.json
fi