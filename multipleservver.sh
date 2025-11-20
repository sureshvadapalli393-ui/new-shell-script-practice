#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"

SUDO_ID=$(id -u)

if [ $SUDO_ID -ne 0 ] ; then
echo -e "$RED dont have access"
exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then 
echo -e "$RED error: Installing mysql is failure"
exit 1

else 
echo -e "$GREEN Installing mysql is success"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then 
echo -e "$RED error: Installing Nginx is failure"
exit 1

else 
echo -e "$GREEN Installing Nginx is success"
fi

dnf install mongodb-mongosh -y

if [ $? -ne 0 ]; then 
echo -e "$RED error: Installing Mongodb is failure"
exit 1

else 
echo -e "$GREEN Installing Mongodb is success"
fi

