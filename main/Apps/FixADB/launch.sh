#!/bin/sh
# Script replace the original adbd file to allows ADB connection.
# By Schmurtz
# Credits to Eggs who made the fix.
# -----
# v1.0 initial version


progdir=`dirname "$0"`
cd $progdir
if ! [ -f "./tips_to_connect_adb_from_windows/adbd_backup" ]; then
		cp /etc/init.d/adbd ./tips_to_connect_adb_from_windows/adbd_backup
fi
cp ./tips_to_connect_adb_from_windows/adbd /etc/init.d/adbd

# restarting ADB
killall -9 adbd
/etc/init.d/adbd start

./printstr "                 ADB fixed.                 "