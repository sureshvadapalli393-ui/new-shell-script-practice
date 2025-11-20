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

dnf list installed mysql &>>$LOGS_FILE

if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOGS_FILE
    VALIDATE $? "MySQL"

else 
    echo -e "$YELLOW mysql already exist...SKIPPING $N"

fi

dnf list installed nginx &>>$LOGS_FILE

if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOGS_FILE
    VALIDATE $? "Nginx"

else 
    echo -e "$YELLOW nginx already exist...SKIPPING $N"

fi

dnf list installed python3 &>>$LOGS_FILE


if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOGS_FILE
    VALIDATE $? "python3"

else 
    echo -e "$YELLOW python3 already exist...SKIPPING $N"

fi


