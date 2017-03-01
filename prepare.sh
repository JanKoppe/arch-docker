#!/bin/bash


FILENAME=$(curl -s https://mirror.jankoppe.de/iso/latest/ 2>&1 | grep -Poi 'archlinux-bootstrap-\d{4}.\d{2}.\d{2}-x86_64.tar.gz' | head -n 1)
DATE=$(echo $FILENAME | grep -Poi '\d{4}.\d{2}.\d{2}')
wget -N https://mirror.jankoppe.de/iso/latest/$FILENAME
echo $DATE > VERSION
tar xfp $FILENAME
echo "Server = https://mirror.jankoppe.de/\$repo/os/\$arch" > root.x86_64/etc/pacman.d/mirrorlist
tar cf bootstrap.tar -C root.x86_64 .
#sudo rm -rf root.x86_64 $FILENAME

