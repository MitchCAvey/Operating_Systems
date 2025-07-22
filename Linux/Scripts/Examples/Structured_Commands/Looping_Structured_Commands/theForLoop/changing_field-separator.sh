#!/bin/bash
# Reading values from a file
#
# Assumes this file is store in same directory as this script
#

filename="states"

IFS=$'\n'

for state in $(cat $file)
do
	echo "Visit beautiful $state"
done


