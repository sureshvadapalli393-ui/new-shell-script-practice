#!/bin/bash

SUDO_ID=$(id -u)

if [ $SUDO_ID -ne 0 ] ; then
echo -e "\e[31m dont have access"
exit 1
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "\e[31m installing $2 is failure"
    exit 1

    else
    echo "\e[32m ling $2 is success"
    fi 

}
dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "nginix"

dnf install python3
VALIDATE $? "python3"