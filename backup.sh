#!/bin/bash

cd /home/pi/MyHackedZNet
git pull

#copy stuff to update
cp /etc/rc.local ./etc
apt list --installed > apt.installed

#Ensure everything belongs to this account
sudo chown pi:pi . -R

git add -A 
git commit -m "Changes Detected: $(date)"
git push

