#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"

SUDO_ID=$(id -u)

if [ $SUDO_ID -ne 0 ] ; then
echo -e "$RED dont have access"
exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "$RED error: Installing $2 is failure"
        exit 1

    else 
        echo -e "$GREEN Installing $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"


dnf install nginx -y
VALIDATE $? "Nginx"


dnf install mongodb-mongosh -y
VALIDATE $? "mongodb"
