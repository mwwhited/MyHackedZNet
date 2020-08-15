#!/bin/bash

cd /home/pi/MyHackedZNet
git pull

#copy stuff to update
cp /etc/rc.local ./etc
cp /etc/ser2net.conf ./etc
cp /usr/local/bin/* ./usr/local/bin
apt list --installed > apt.installed

#Ensure everything belongs to this account
sudo chown pi:pi . -R

git add -A 
git commit -m "Changes Detected: $(date)"
git push

