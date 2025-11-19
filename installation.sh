#!/bin/bash

SUDO_ID=$(id -u)

if [ $SUDO_ID -eq 0]; then

echo "Sudo user"
exit 0
fi

dnf install mysql -y

if[ $? -ne 0 ]; then
echo "no acces"
exit 1
else 
echo "sudo user
fi

dnf install nginx -y
