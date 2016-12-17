#!/bin/sh
while true; do

	# Clean up previously running apps, gracefully at first then harshly
	killall -TERM matchbox-window-manager 2>/dev/null;
	sleep 2;
	killall -9 matchbox-window-manager 2>/dev/n
	# Disable DPMS / Screen blanking
	xset -dpms
	xset s off

	# Reset the framebuffer's colour-depth
	fbset -depth $( cat /sys/module/*fb*/parameters/fbdepth );

	# Hide the cursor (move it to the bottom-right, comment out if you want mouse interaction)
	xwit -root -warp $( cat /sys/module/*fb*/parameters/fbwidth ) $( cat /sys/module/*fb*/parameters/fbheight )

	# Start the window manager (remove "-use_cursor no" if you actually want mouse interaction)
	matchbox-window-manager -use_titlebar no -use_cursor no &

	/bin/bash ~/startvideos.sh
done;
