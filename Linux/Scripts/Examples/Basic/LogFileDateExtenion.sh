#!/bin/bash
# This script will copy the /usr/bin directory listing to a log file

today=$(date +%y%m%d)

#today2=$(date +%y%m%d)


ls -la /usr/bin  > ./Examples/Basic/log.$today
