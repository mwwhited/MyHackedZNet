#!/bin/sh

# Black
/usr/bin/gpio -g write 2 1
/usr/bin/gpio -g write 3 1
/usr/bin/gpio -g write 4 1

if [ "$1" = "blue" -o "$1" = "b" ]; then
 /usr/bin/gpio -g write 4 0
fi
if [ "$1" = "green" -o "$1" = "g" ]; then
 /usr/bin/gpio -g write 3 0
fi
if [ "$1" = "red" -o "$1" = "r" ]; then
 /usr/bin/gpio -g write 2 0
fi

if [ "$1" = "yellow" -o "$1" = "y" ]; then
 /usr/bin/gpio -g write 3 0
 /usr/bin/gpio -g write 2 0
fi
if [ "$1" = "cyan" -o "$1" = "c" ]; then
 /usr/bin/gpio -g write 3 0
 /usr/bin/gpio -g write 4 0
fi
if [ "$1" = "magenta" -o "$1" = "m" ]; then
 /usr/bin/gpio -g write 2 0
 /usr/bin/gpio -g write 4 0
fi

if [ "$1" = "white" -o "$1" = "w" ]; then
 /usr/bin/gpio -g write 2 0
 /usr/bin/gpio -g write 3 0
 /usr/bin/gpio -g write 4 0
fi

exit

