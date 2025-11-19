#!/bin/bash

SUDO_ID=$(id -u)

if [ $SUDO_ID -eq 0 ]; then

echo "Sudo user"
exit 1
fi

dnf install mysql -y

if[ $? -ne 0 ]; then
echo "no acces"
exit 1
else 
echo "Normal User"

fi