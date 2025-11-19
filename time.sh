#!/bin/bash

START_DATE=$(date +%s)

sleep 20 &

END_TIME=$(date +%s)

echo "script executed time taken: (($END_TIME-$START_DATE))"
