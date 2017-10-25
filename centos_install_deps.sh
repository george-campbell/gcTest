#!/bin/bash

sed -i 's/requiretty/!requiretty/g' /etc/sudoers

echo "Configure docker device marrer"
DOCKERVG=$( parted -m /dev/sdc print all 2>/dev/null | grep /dev/sd | head -1 | cut -d':' -f1 )
echo "DEVS=${DOCKERVG}" > /etc/sysconfig/docker-storage-setup
echo "VG=docker-vg" >> /etc/sysconfig/docker-storage-setup

echo "Installation finished"