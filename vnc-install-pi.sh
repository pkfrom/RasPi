#!/bin/sh

sudo apt-get install tightvncserver -y
tightvncserver
vncserver :1 -geometry 1920x1080 -depth 24

service lightdm stop


chmod +x vnc.sh
./vnc.sh

sudo su

cp ./vncboot /etc/init.d/vncboot
chmod 755 /etc/init.d/vncboot

update-rc.d -f lightdm remove
update-rc.d vncboot defaults