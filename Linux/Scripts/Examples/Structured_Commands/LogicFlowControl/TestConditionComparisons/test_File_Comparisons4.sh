#!/bin/bash
# Testing if you can read a file
#

pwfile=/etc/shadow
#
# First, test if the file exists, and is a file
if [ -f $pwfile ]
then
	# Now test if you can read it
	if [ -r $pwfile ]
	then
		tail $pwfile
	else
		echo "Sorry, I am unable to read the $pwfile file"
	fi
else
	echo "Sorry, the file $pwfile does not exist"
fi


