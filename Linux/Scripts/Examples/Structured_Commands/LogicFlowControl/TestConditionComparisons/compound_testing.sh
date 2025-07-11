#!/bin/bash
# Testing compound comparisons
#

current_pwd=$(pwd)

if [ -d $current_pwd ] && [ -w $current_pwd/dummyScript.sh ]
then
	echo "The file exists and you can write to it"
else
	echo "I cannot write to the file"
fi
