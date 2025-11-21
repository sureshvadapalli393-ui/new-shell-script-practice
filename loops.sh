#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
N="\e[0m"

SUDO_ID=$(id -u)


LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started exected at : $(date)"

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

for package in $@
do
dnf list installed $package &>>LOGS_FILE
if [ $? -ne 0 ]; then
    dnf install $package -y &>>LOGS_FILE
    VALIDATE $? "$package"
else
    echo -e "$package already installed...$YELLOW SKIPPING"
fi
done