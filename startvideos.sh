#!/bin/bash

#Make a newline a delimiter instead of a space
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

configs=`cat /boot/looperconfig.txt`
usb=`echo "$configs" | grep usb | cut -c 5- | tr -d '\r' | tr -d '\n'`
audio_source=`echo "$configs" | grep audio_source | cut -c 14- | tr -d '\r' | tr -d '\n'`

FILES=/home/pi/videos/

if [[ $usb -eq 1 ]]; then
    FILES=/media/USB/
fi

while true; do
if pgrep omxplayer > /dev/null
then
	echo 'running'
else
	for f in `ls $FILES | grep ".mp4$\|.avi$\|.mkv$\|.mp3$\|.mov$\|.mpg$\|.flv$\|.m4v$"`
	do
		/usr/bin/omxplayer -r -o "$audio_source" "$FILES$f"
	done
fi
done

#Reset the IFS
IFS=$SAVEIFS
