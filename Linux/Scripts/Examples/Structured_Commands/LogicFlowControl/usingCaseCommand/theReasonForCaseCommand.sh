#!/bin/bash
# Looking for a possible value
#
if [ $USER = "rich" ]
then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = "barbara" ]
then
	echo "Welcome $USER"
	echo "Please enojoy your visit"
elif [ $USER = "testing" ]
then
	echo "Special testing account"
elif [ $USER = "jessica" ]
then
	echo "Do not forget to logout when you're done"
else
	echo "Sorry, you are not allowed here"
fi


