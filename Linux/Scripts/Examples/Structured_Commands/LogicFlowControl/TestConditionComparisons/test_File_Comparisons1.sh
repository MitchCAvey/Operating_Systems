#!/bin/bash
# Look before you leap
#
jump_directory=/home/mitchavey
#
if [ -d $jump_drectory ]
then
	echo "The $jump_directory"
	cd $jump_directory
	ls
else
	echo "The $jump_directory directory does not exist"
fi



