#!/bin/sh
/usr/bin/gpio -g write 2 1
/usr/bin/gpio -g write 3 1
/usr/bin/gpio -g write 4 1

if [ "$1" = "blue" ]; then
 /usr/bin/gpio -g write 4 0
fi
if [ "$1" = "green" ]; then
 /usr/bin/gpio -g write 3 0
fi
if [ "$1" = "red" ]; then
 /usr/bin/gpio -g write 2 0
fi
if [ "$1" = "yellow" ]; then
 /usr/bin/gpio -g write 3 0
 /usr/bin/gpio -g write 2 0
fi
exit

