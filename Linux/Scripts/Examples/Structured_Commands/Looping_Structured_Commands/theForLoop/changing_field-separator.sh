#!/bin/bash
# Reading values from a file
#
# Assumes this file is store in same directory as this script
#

filename="states.txt"

IFS=$' '

for state in $(cat $filename)
do
	echo "Visit beautiful $state"
done


