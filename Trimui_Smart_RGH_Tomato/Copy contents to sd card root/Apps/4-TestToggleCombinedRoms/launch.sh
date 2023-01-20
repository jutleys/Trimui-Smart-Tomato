#!/bin/sh
cd $(dirname "$0")
HOME=/mnt/SDCARD/Emus

[ -d ".GB-GBC" ]
then
    mv .GB-GBC GB-GBC
    mv GB .GB
    mv GBC .GBC
else
    mv GB-GBC .GB-GBC
    mv .GB GB
    mv .GBC GBC