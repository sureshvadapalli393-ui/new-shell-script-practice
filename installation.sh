#!/bin/bash

SUDO_ID=$(id -u)

if [ $SUDO_ID -ne 0 ] ; then
echo -e "\e[31m dont have access"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then 
echo "error: Installing mysql is failure"

else 
echo "Installing mysql is success"
fi