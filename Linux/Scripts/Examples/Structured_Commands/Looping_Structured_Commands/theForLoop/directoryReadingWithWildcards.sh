#!/bin/bash

# Iterate through all the filesin a directory
#

for file in /home/mitch/test1/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done


