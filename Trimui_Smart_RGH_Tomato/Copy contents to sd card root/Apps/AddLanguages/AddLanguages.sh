#!/bin/sh
cd /mnt/SDCARD/Apps/AddLanguages

while [ -z "$CurLanguage" ]; do
	clear
	echo "Enter the number of your choice and press Start ************"
	echo "  0) ch"
	echo "  1) de"
	echo "  2) es"
	echo "  3) fr"
	echo "  4) it" 
	echo "  5) ja" 
	echo "  6) ko" 
	echo "  7) nl" 
	echo "  8) pt" 
	echo "  9) pt-BR" 
	echo "  10) ru" 
	echo "  11) sv" 
	echo 
	echo "  q) To quit" 

	read n

	case $n in
	  0) CurLanguage=ch;;
	  1) CurLanguage=de;;
	  2) CurLanguage=es;;
	  3) CurLanguage=fr;;
	  4) CurLanguage=it;;
	  5) CurLanguage=ja;;
	  6) CurLanguage=ko;;
	  7) CurLanguage=nl;;
	  8) CurLanguage=pt;;
	  9) CurLanguage=pt-BR;;
	  10) CurLanguage=ru;;
	  11) CurLanguage=sv;;
	  q) exit;;
	  *) echo "invalid option";read -p "Press start to choose another option ...";;
	esac

done


if ! [ -z "$CurLanguage" ]; then
clear
	cp ./languages/$CurLanguage.lang /usr/trimui/res/lang/ch.lang
	cp ./languages/$CurLanguage.lang.short /usr/trimui/res/lang/ch.lang.lang.short
	echo -ne "\nLanguage changed to $CurLanguage.\nChange it in settings if necessary.\n\n"
	read -p "Press start to exit"

fi

# reboot



