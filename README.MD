First source-code came from https://github.com/filo891/RPiVideoLooper this repostory but when I use it I realised it is little bit buggy and slow. I make it smoother and faster. It just become Fool-Proof Media Player :)

Features

1) Auto installation file (install.sh)
2) Easy to configure config file 
  - Select USB Drive or internal storage as the media source. (usb=1 for usb usb=0 for internal storage /home/pi/videos/ )
  - Select audio output source (http://elinux.org/Omxplayer#Audio) (audio_output=hdmi local, hdmi or both)
3) It can play supported filetypes using omxplayer (.mp4, .avi, .mkv, .mp3, .mov, .mpg, .flv, .m4v)
4) It installs vsftpd automatically in this way you can easily upload your media files into USB drive without shutting down raspberry pi. All you need is learn IP address of raspberry pi from your router and just connect it through FTP using login credentials. Navigate to /media/USB folder and upload your media into it.
  Note: After uploading your media, just wait until raspberry pi plays old playlist. In next round, your new media should start playing.
5) It starts automatically and loops forever! It doesn't require any command or etc.
6) Low memory usage, mine is working nearly for 2 months! 
7) Perfect for advertisement ;)

How to install
1) Install Raspbian jessie lite image into an SD card. 
2) Upload the contents into temporary file
3) Connect with ssh and navigate to the folder and execute sudo bash install.sh
4) Wait until you see a dialog with title x11-common configuring. Select anyone.
5) Thats it! Format a USB drive with NTFS support and plug it into pi. Reboot the raspberry pi and voila ;)  
