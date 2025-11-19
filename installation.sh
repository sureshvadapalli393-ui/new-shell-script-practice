#!/bin/bash

SUDO_ID=$(id -u)

if[ $SUDO_ID -eq 0 ]; then
echo "no acces"

else 
echo "sudo user
fi

dnf install nginx -y

