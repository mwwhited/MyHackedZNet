#!/bin/bash

HOMESEER_TARGET=192.168.1.161

/usr/local/bin/led.sh magenta
ping -w 1 $HOMESEER_TARGET 2>/dev/null 1>/dev/null
RETVAL=$?
if [ $RETVAL -eq 0 ]; then
	/usr/local/bin/led.sh green
else
	/usr/local/bin/led.sh yellow
fi

exit $RETVAL
