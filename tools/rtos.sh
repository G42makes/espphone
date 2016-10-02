#!/bin/bash

#Let's ensure we can access the tools we need
PATH=$PATH:~/Repos/esp-open-sdk/xtensa-lx106-elf/bin
export PATH

#And find the board if available(just looks for last time the serial chip was mentioned on my WeMos
TTY=`dmesg | grep ch341-uart | tail -n 1 | sed 's/.*tty\([alpha]*[0-9]*\)/tty\1/'`
echo Last Seen WeMos: /dev/$TTY
echo

#And add an export so we don't have to specify it all the time
ESPPORT=/dev/$TTY
export ESPPORT

cd ~/Repos/espphone/tools


#becasue a bash script cannot update the path externally, start a new bash with the above changes
echo Launching new shell:
echo
exec /bin/bash
