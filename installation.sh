#!/bin/bash

SUDO_ID=$(id -u)

if [ $SUDO_ID -eq 0 ]; then 
echo "Sudo user"

else 
echo "Normal User"

fi