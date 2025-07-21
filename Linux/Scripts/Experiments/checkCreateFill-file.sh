#!/bin/bash

# This script will check to ensure a given filename doesn't exist
# If the filename doesn't exist, the file will be created and filled with data
# If the filename does esist, the filename will be filled with data 
#

stateList="Buffalo Flordia California Louisiana Hawaii"

filename="states.txt"

currentLocal=$(pwd)

if [ -d $currentLocal/Experiments ]
then
	#echo "Your current working directory is: $curentLocal/Experiments"
	echo

	#pwd

	cd $currentLocal/Experiments
	#pwd

	if [ -f $filename ] && [ -s $filename ] 
	then
		#ls -laui $currentLocal/Experiments/$filename
		#cat $filename

		for state in $(cat $filename)
		do
			echo "You've visited this state: $state"
		done
	else
		echo "The filename you provided ($filename) doesn't exist"

		touch $filename ; echo $stateList > $filename


		echo
		echo "File has been created, please run script again"
		pwd ; echo ; ls -laui $filename 
		echo
	fi
fi
