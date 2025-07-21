#!/bin/bash

# This script will check to ensure a given filename doesn't exist
# If the filename doesn't exist, the file will be created and filled with data
# If the filename does esist, the filename will be filled with data 
#

stateList="Buffalo Flordia California Louisiana Hawaii"

filename="states.txt"

currentLocal=$(pwd)

if [ -d $currentLocal/Experiments ]
then
	echo "Your current working directory is: $curentLocal/Experiments"
	echo

	if [ -f $currentLocal/Experiments/$filename ] 
	then
		ls -laui $currentLocal/Experiments/$filename
	else
		echo "The filename you provided ($filename) doesn't exist"
	fi
fi
