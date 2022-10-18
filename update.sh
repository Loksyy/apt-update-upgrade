#!/bin/bash

TEXT_JUMP='\e[0m'
TEXT_GREEN='\033[0;32m'
TEXT_RED_B='\e[1;31m'

sudo apt update
echo -e $TEXT_GREEN
echo 'APT update finished...'
echo -e $TEXT_JUMP

sudo apt -y upgrade
echo -e $TEXT_GREEN
echo 'APT upgrade finished...'
echo -e $TEXT_JUMP

sudo apt -y autoremove
echo -e $TEXT_GREEN
echo 'APT auto remove finished...'
echo -e $TEXT_JUMP

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
    echo -e $TEXT_RED_B
    read -p "Are you sure? (y/n)" CONT
    if [ "$CONT" = "y" ]; then
    /sbin/reboot;
    fi
fi
