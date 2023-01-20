#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD/Emus

if [ -d "/mnt/SDCARD/Emus/.GB-GBC" ];
then
    mv /mnt/SDCARD/Emus/.GB-GBC /mnt/SDCARD/Emus/GB-GBC
    mv /mnt/SDCARD/Emus/GB /mnt/SDCARD/Emus/.GB
    mv /mnt/SDCARD/Emus/GBC /mnt/SDCARD/Emus/.GBC
    
    mv /mnt/SDCARD/Emus/.WS-WSC /mnt/SDCARD/Emus/WS-WSC
    mv /mnt/SDCARD/Emus/WS /mnt/SDCARD/Emus/.WS
    mv /mnt/SDCARD/Emus/WSC /mnt/SDCARD/Emus/.WSC

    mv /mnt/SDCARD/Emus/.FC-SFC /mnt/SDCARD/Emus/FC-SFC
    mv /mnt/SDCARD/Emus/FC /mnt/SDCARD/Emus/.FC
    mv /mnt/SDCARD/Emus/SFC /mnt/SDCARD/Emus/.SFC
else
    mv /mnt/SDCARD/Emus/GB-GBC /mnt/SDCARD/Emus/.GB-GBC
    mv /mnt/SDCARD/Emus/.GB /mnt/SDCARD/Emus/GB
    mv /mnt/SDCARD/Emus/.GBC /mnt/SDCARD/Emus/GBC

    mv /mnt/SDCARD/Emus/WS-WSC /mnt/SDCARD/Emus/.WS-WSC
    mv /mnt/SDCARD/Emus/.WS /mnt/SDCARD/Emus/WS
    mv /mnt/SDCARD/Emus/.WSC /mnt/SDCARD/Emus/WSC

    mv /mnt/SDCARD/Emus/FC-SFC /mnt/SDCARD/Emus/.FC-SFC
    mv /mnt/SDCARD/Emus/.FC /mnt/SDCARD/Emus/FC
    mv /mnt/SDCARD/Emus/.SFC /mnt/SDCARD/Emus/SFC
fi