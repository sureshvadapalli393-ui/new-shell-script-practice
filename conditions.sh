#!/bin/bash

NUMBER=$1

if [ $(($NUMBER % 2)) -eq 0 ]; then
echo "number is even"

else 
echo "nmber is odd"

fi