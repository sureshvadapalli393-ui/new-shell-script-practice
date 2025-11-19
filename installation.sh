#!/bin/bash

SUDO_ID=$(id -u)

if[ $SUDO_ID]; then
echo "no acces"
exit 1
else 
echo "sudo user
fi

dnf install nginx -y

