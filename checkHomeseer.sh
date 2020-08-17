#!/bin/bash

#HOMESEER_TARGET=192.168.1.161
HOMESEER_TARGET=255.255.255.255

/usr/local/bin/led.sh white
ping -w 1 $HOMESEER_TARGET 2>/dev/null
RETVAL=$?
if [ $RETVAL -eq 0 ]; then
	/usr/local/bin/led.sh blue
else
	/usr/local/bin/led.sh yellow
fi

