#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi
echo "Copying neccessary files"
cp -a startvideos.sh /home/pi/
cp -a looperconfig.txt /boot/
cp -a rc.local /etc/
cp -a xinitrc /boot/
#ln -s /boot/xinitrc ~/.xinitrc
echo "Install NTFS-USB Support & Make Auto-Mountable"
apt-get update
apt-get -y install ntfs-3g
mkdir /media/USB
chmod a+r /media/USB
echo "/dev/sda1	/media/USB	ntfs-3g	defaults,noatime,nodiratime 	0	0" >> /etc/fstab
echo "Install FTP Support And copy configuration file"
apt-get -y install vsftpd
cp -a vsftpd.conf /etc/
apt-get -y install omxplayer
apt-get -y install xinit
apt-get -y install x11-common
dpkg-reconfigure x11-common
echo "Thats it! :) Fool-proof Video Player"
