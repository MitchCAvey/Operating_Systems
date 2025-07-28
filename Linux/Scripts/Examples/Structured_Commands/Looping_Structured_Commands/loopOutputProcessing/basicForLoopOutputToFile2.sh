#!/bin/bash
# The basic structure of using the output from a for loops output
#

IFSOLD=$IFS

IFS=','

curDir=$(pwd)

echo -e "Your current directory is: $curDir \n"

for file in $(ls -laui $curDir/controllingLoops) 
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	fi
done > output.txt

IFS=$IFSOLD

