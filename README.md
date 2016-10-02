# ESP Phone 
Let's see if I can make an ESP8266 do SIP... I'm in way over my head here.

# Basics
Using some other projects as a base, I want to see if I can get an ESP8266 to have all the features of a basic hardware SIP phone.

#Projects Used
For SIP I'm looking to start trying with [PJSIP](http://www.pjsip.org/)

But, since that project needs some capabilities that are not default in most open source projects. I want threading to allow things like buttons, displays and a web interface. So I need some more code to back me up. Luckily the official SDK for these chips is based on FreeRTOS, and there is an open port available to code against, [esp-open-rtos](https://github.com/SuperHouse/esp-open-rtos).

#Status
Nothing. I have the RTOS setup to build and install according to their excellent instructions, but have not actually tried to get the SIP libraries involved yet. I'm also not that good with C and derivatives, so don't expect this to be pretty.

#Setup
I use a 'Repos' folder in my user home. Everything is checked out in there. 
Follow the instructions to install esp-open-rtos.
Using SVN download the trunk of PJSIP
Make sure esptool.py installed properly.
Run some test examples(ie blink) to make sure it works.
Use tools/rtos.sh in this repo to set the path up.
