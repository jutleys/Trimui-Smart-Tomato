#!/bin/bash

RomsFolder="/mnt/SDCARD/Roms"
EmuFolder="/mnt/SDCARD/Emus"
EmuDisabledFolder="/mnt/SDCARD/Emus/_NotInstalled"
NumRemoved=0
NumAdded=0

#Delete GitKeep
find /mnt/SDCARD/Roms -type f -name '.gitkeep' -delete
find /mnt/SDCARD/Roms -type f -name '.gitkeep' -exec rm {} +
find /mnt/SDCARD/Roms -type F -name ".gitkeep" -exec rm -rf {} +

for subfolder in $RomsFolder/*/; do

	SubFolderName=$(basename "$subfolder")
	
	if [ -z "$(ls -A $subfolder)" ]; then
		if [ -d "$EmuFolder/$SubFolderName" ]; then
			echo removing $SubFolderName
			mv $EmuFolder/$SubFolderName/ "$EmuDisabledFolder/"
			let NumRemoved++;
		fi
	else
		if [ -d "$EmuDisabledFolder/$SubFolderName" ]; then
			echo adding $SubFolderName
			mv $EmuDisabledFolder/$SubFolderName/ "$EmuFolder/"
			let NumAdded++;
		fi
	fi
	
done

	echo -ne "\n=============================\n"
	echo -ne "${NumRemoved} emulator(s) removed\n${NumAdded} emulator(s) added\n"
	echo -ne "=============================\n\n"

 read -p "Press start to quit ..."
 
 