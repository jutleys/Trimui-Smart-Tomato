#!/bin/sh
cd $(dirname "$0")
if [ "$(ip r)" != "" ]; then
	./printstr " Adjusting time via WIFI "
	ntpd -n -q -p time.google.com
	if [ $? -eq 0 ]; then
		if [ -f timezone.txt ]; then
			./printstr "Synchronized, setting timezone"
			date +%s -s @$(($(date +%s)+60*60*$(cat timezone.txt)))
		else
			./printstr "Synchronized, missing timezone"
		fi
		date "+%Y/%m/%d %H:%M:%S" >clock.txt
		sync
		sleep 1
	fi
fi
./clock
