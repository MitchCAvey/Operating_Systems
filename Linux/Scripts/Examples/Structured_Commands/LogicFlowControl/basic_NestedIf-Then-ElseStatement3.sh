#!/bin/bash
#
#
#

testuser=NoSuchUser
#testuser=mitchavey

if [ $USER = "mitchavey" ] 
then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = "barbara" ] 
then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = "root" ]
then
	echo "Do not forget to logout when you're done"
else
	echo "Sorry, you are not allowed here"
fi
