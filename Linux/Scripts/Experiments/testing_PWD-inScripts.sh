#!/bin/bash

current_pwd=$(pwd)
filename="states.txt"

echo $current_pwd

if [ -d $current_pwd/Experiments ]
then
	echo "Your current working directory is: $current_pwd/Experiments"
	#ls -laui $current_pwd/Experiments

	if [ -f $current_pwd/Experiments/$filename ]
	then
		ls -laui $current_pwd/Experiments/$filename
	else
		echo "The filename you provide ($filename) doesn't exist"
	fi	
fi
