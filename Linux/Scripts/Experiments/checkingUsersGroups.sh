#!/bin/bash
# This is a experiment on using if-then statements and shell scripting to 
# find a users groups
#


testuser=mitchavey

if grep $testuser /etc/group
then
	echo "The user $testuser is a part of these groups"
fi

