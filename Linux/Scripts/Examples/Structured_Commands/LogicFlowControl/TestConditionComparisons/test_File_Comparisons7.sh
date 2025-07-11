#!/bin/bash
# Testing file execution
#



if [ -x dummyScript.sh ]
then
	echo "You can run the script: "
	./dummyScript.sh
else
	echo "Sorry, you are unable to execute the script"
fi


