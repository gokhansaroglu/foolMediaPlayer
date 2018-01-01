First source-code came from https://github.com/filo891/RPiVideoLooper this repostory but when I use it I realised it is little bit buggy and slow. I make it smoother and faster. It just become Fool-Proof Media Player :)

## Features

- Auto installation file (install.sh)
- Easy to configure config file 
  - Select USB Drive or internal storage as the media source. (usb=1 for usb usb=0 for internal storage /home/pi/videos/ )
  - Select audio output source (http://elinux.org/Omxplayer#Audio) (audio_output=hdmi local, hdmi or both)
- It can play supported filetypes using omxplayer (.mp4, .avi, .mkv, .mp3, .mov, .mpg, .flv, .m4v)
- It installs vsftpd automatically in this way you can easily upload your media files into USB drive without shutting down raspberry pi. All you need is learn IP address of raspberry pi from your router and just connect it through FTP using login credentials. Navigate to /media/USB folder and upload your media into it. 
  -Note: After uploading your media, just wait until raspberry pi plays old playlist. In next round, your new media should start playing.
- It starts automatically and loops forever! It doesn't require any command or etc.
- Low memory usage, mine is working nearly for 2 months! 
- Perfect for advertisement ;)

## How to install
- Install Raspbian jessie lite image into an SD card. 
- Upload the contents into temporary file
- Connect with ssh and navigate to the folder and execute sudo bash install.sh
- Wait until you see a dialog with title x11-common configuring. Select anyone.
- Thats it! Format a USB drive with NTFS support and plug it into pi. Reboot the raspberry pi and voila ;)  

## Warning For Strech Users!

sudo dpkg-reconfigure x11-common

update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults

Gives an error. To fix it;

sudo apt-get install xserver-xorg-legacy -y

sudo nano /etc/X11/Xwrapper.config

#Change console to anybody

allowed_users=anybody
