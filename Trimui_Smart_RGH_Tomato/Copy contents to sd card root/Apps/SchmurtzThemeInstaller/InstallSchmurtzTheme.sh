#!/bin/sh
cd /mnt/SDCARD/Apps/SchmurtzThemeInstaller

EmuFolder="/mnt/SDCARD/Emus"
EmuDisabledFolder="/mnt/SDCARD/Emus/_DisabledEmus"

DisabledEmusExist=0

# if some emulators have been disabled then we restore it before copying the new icon thumbnails
if [ -d "$EmuDisabledFolder" ] && [ "$(ls -A $EmuDisabledFolder)" ]; then
	mv $EmuDisabledFolder/* $EmuFolder/
	DisabledEmusExist=1
fi


while [ -z "$CurPack" ]; do
	clear
	echo "Enter the number of your choice and press Start ************"
	echo "  1) Install Schmurtz Theme"
	echo "  2) Restore Stock MainUI icons"
	echo "  3) Restore Stock Emulator icons (bigger)"
	echo 
	echo "  q) To quit"

	read n

	case $n in
	  1) CurPack="./Schmurtz Theme.7z";sed -i "/\"theme\":/c \"theme\":\"/mnt/SDCARD/Themes/Schmurtz/\","  "/mnt/UDISK/system.json";;
	  2) CurPack="./Stock Theme - MainUI Icons.7z";;
	  3) CurPack="./Stock Theme - Emus Icons.7z";;
	  q) exit;;
	  *) echo "invalid option";read -p "Press start to choose another option ...";;
	esac

done


if ! [ -z "$CurPack" ]; then
	clear
	./7zz x "$CurPack" -o"/" -y
	if [ "$DisabledEmusExist" = "1" ]; then
		echo -ne "\nRunning Emulator Cleaner\n\n\n\n\n"
		sh /mnt/SDCARD/Apps/EmulatorsCleaner/EmulatorsCleaner.sh > /dev/null
	fi
	echo -ne "\n=====================================================\n\nTheme applied : $CurPack.\n\n\n\n\n\n\n\n"
	read -p "Press start to exit"
fi





