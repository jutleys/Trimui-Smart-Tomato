#!/bin/sh
cd $(dirname ${0})
dd if=$(basename ${0} .sh).bmp of=/dev/by-name/bootlogo bs=65536
