#!/bin/bash

# Iterate through all the filesin a directory
#

#for item in $HOME/Documents/*
#do
#    echo "$item"
#    if [ -f "$item" ]
#    then
#	echo "$item is a file"
#    fi
#done

# Array variable declaration
logFiles=()

for file in $HOME/Documents/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		#echo "$file is a file"
		logFiles+=($(basename "$file"))
	fi
done

echo

echo "Display Array after been load with values"

counter=1

for item in ${logFiles[@]}
do
    echo "$item"
done





