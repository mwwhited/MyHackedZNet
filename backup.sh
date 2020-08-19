#!/bin/bash

cd /home/pi/MyHackedZNet
git pull

#copy stuff to update
cp /etc/rc.local ./etc
cp /etc/ser2net.conf ./etc
cp -r /etc/network/* ./etc/network/
cp /usr/local/bin/* ./usr/local/bin

apt list --installed > apt.installed
crontab -l > crontab.config

#Ensure everything belongs to this account
sudo chown pi:pi . -R

git add -A 
git commit -m "Changes Detected: $(date)"
git push

