#!/bin/bash
# The basic structure of using the output from a for loops output
#

for file in /home/mitchavey/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done > output.txt

