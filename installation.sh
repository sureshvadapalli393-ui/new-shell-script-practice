#!/bin/bash

SUDO_ID=$(id -u)

if[ $SUDO_ID -eq 0 ]; then
dnf install nginx -y

else 
echo "sudo user
exit 1
fi
