#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
N="\e[0m"

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

dnf list installed mysql

if[ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"

else 
    echo "$YELLOW mysql already exist...SKIPPING $N"

fi

dnf list installed nginx

if[ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"

else 
    echo "$YELLOW nginx already exist...SKIPPING $N"

fi

dnf list installed python3


if[ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"

else 
    echo "$YELLOW python3 already exist...SKIPPING $N"

fi


