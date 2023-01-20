#!/bin/sh
cd $(dirname "$0")
grep 'mounted"=="' /etc/main
if [ $? -eq 0 ]; then
	sed -i 's/mounted"=="/mounted" == "/' /etc/main
	if [ $? -eq 0 ]; then
		sync
		./printstr "  FastBoot patched  "
	else
		./printstr "  Failed to patch  "
	fi
else
	./printstr "  Already patched  "
fi
