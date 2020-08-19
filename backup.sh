#!/bin/bash

cd /home/pi/MyHackedZNet
git pull

#copy stuff to update
cp /etc/rc.local ./etc
cp /etc/ser2net.conf ./etc
cp -r /etc/network/* ./etc/network
cp -r /etc/wpa_supplicant/* ./etc/wpa_supplicant/
cp /usr/local/bin/* ./usr/local/bin

apt list --installed > apt.installed
crontab -l > crontab.config

sed -i s/ssid=\".*\"/ssid=\"YOUR WIFI\"/ etc/wpa_supplicant/wpa_supplicant.conf
sed -i s/psk=\".*\"/psk=\"YOUR PASSWORD\"/ etc/wpa_supplicant/wpa_supplicant.conf

#Ensure everything belongs to this account
sudo chown pi:pi . -R

git add -A 
git commit -m "Changes Detected: $(date)"
git push

