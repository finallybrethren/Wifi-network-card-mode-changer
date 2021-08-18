#!/bin/bash

if [ -z "$1" ]; then
    echo "[*] wifi monitor/managed mode enable/disable script" 
    echo "[*] usage : $0 <mode> <if>"
    exit 0
fi

sudo ifconfig $2 down
sudo iwconfig $2 mode $1 
sudo ifconfig $2 up
sudo iwconfig $2 | grep -A 1 $2 
