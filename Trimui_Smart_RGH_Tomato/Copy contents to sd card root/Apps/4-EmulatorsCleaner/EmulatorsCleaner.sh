#!/bin/bash

find /mnt/SDCARD/Roms -type f -name '.gitkeep' -delete
find /mnt/SDCARD/Roms -type f -name '.gitkeep' -exec rm {} +
find /mnt/SDCARD/Roms -type F -name ".gitkeep" -exec rm -rf {} +

RomsFolder="/mnt/SDCARD/Roms"
EmuFolder="/mnt/SDCARD/Emus"
EmuDisabledFolder="/mnt/SDCARD/Emus/_DisabledEmus"
NumRemoved=0
NumAdded=0
mkdir $EmuDisabledFolder 2> /dev/null

# we check if some emulators must be removed from /mnt/SDCARD/Emus 
for subfolder in $EmuFolder/*/; do

	if [ -f "$subfolder/config.json" ]; then
		RomPath=$(grep '"rompath":*' $subfolder/config.json |sed 's|.*"rompath":"\([^"]*\)".*|\1|')
		RomFolderName=$(basename "$RomPath")

		if ! find $RomsFolder/$RomFolderName '!' -name '*.db' '!' -name '*.sh' -mindepth 1 -maxdepth 1 |  read; then
			echo "Removing $(basename "$subfolder") emulator (no $RomFolderName roms)."
			mv $subfolder "$EmuDisabledFolder/"
			# rom content has probably changed recently, we force a refresh
			rm "$RomsFolder/$RomFolderName/${RomFolderName}_cache2.db.json" 2> /dev/null
			let NumRemoved++;
		fi
	fi
	
done


echo -----------------------------------------------------


# we check if some emulators must be added in /mnt/SDCARD/Emus 
for subfolder in $EmuFolder/_DisabledEmus/*/; do

	if [ -f "$subfolder/config.json" ]; then
		RomPath=$(grep '"rompath":*' $subfolder/config.json |sed 's|.*"rompath":"\([^"]*\)".*|\1|')
		RomFolderName=$(basename "$RomPath")

		if find $RomsFolder/$RomFolderName '!' -name '*.db' '!' -name '*.sh' -mindepth 1 -maxdepth 1 |  read; then
			echo "Adding $(basename "$subfolder") emulator (for $RomFolderName roms)."
			mv $subfolder "$EmuFolder/"
			# rom content has probably changed recently, we force a refresh
			rm "$RomsFolder/$RomFolderName/${RomFolderName}_cache2.db.json" 2> /dev/null
			let NumAdded++;
		fi
	fi

done



echo -ne "\n=============================\n"
echo -ne "${NumRemoved} emulator(s) removed\n${NumAdded} emulator(s) added\n"
echo -ne "=============================\n\n"

read -p "Press start to quit ..."
 
 