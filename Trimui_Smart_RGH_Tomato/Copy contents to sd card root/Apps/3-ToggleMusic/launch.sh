#!/bin/sh

cd /usr/trimui/res/sound

if [ -f MusMus-BGM-091.mp3-off ]; then
	mv MusMus-BGM-091.mp3-off MusMus-BGM-091.mp3
else
	mv MusMus-BGM-091.mp3 MusMus-BGM-091.mp3-off
fi