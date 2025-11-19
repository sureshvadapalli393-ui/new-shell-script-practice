#!/bin/bash

SUDO_ID=$(id -u)

if [$SUDO_ID -ne 0]; then
echo "dont have sudo access"
exit 1
fi
dnf install mysql -y

if [$? -ne 0]; then
echo "error: installing mysql is failure"
exit

else
echo "installing mysql server is success"
fi

dnf install nginx -y

if [$? -ne 0]; then
echo "error: installing nginxfailure"
exit

else
echo "installing nginxserver is success"
fi

dnf install mongodb-mongosh -y
if [$? -ne 0]; then
echo "error: installing mongodb failure"
exit 1

else
echo "installing mongodb is usccess"
fi