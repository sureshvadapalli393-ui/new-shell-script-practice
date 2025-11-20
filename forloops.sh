!#/bin/bash

for package in $@
do 
dnf list installed $package &>>