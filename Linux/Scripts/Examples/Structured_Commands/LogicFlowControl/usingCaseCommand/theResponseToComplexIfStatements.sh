#!/bin/bash
#
# Using the case command
#
case $USER in
rich | barbara)
	echo "Welcome, $USER"
	echo "Please enjoy your visit";;
testing)
	echo "special testing account";;
jessica)
	echo "Do not forget to log off when you're done";;
*)
	echo "sorry, you are not allowed here";;
esac

