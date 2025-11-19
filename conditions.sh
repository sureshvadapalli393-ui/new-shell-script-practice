#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
echo "number is less than 10"
elif [ $NUMBER -eq 10 ]; then
echo "number is eqal to given number"
else 
echo "nmber is eqal or greater than 10"

fi