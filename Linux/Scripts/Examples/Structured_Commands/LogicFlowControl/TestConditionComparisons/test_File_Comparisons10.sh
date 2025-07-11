#!/bin/bash
# Testing file dates
#
if [ dummyScript2.sh -nt dummyScript3.sh ]
then
	echo "The dummyScript2 file is newer than dummyScript3"
else
	echo "The dummyScript2 is newer than dummyScript1"
fi

if [ dummyScript1.sh -ot dummyScript3.sh ]
then
	echo "The dummyScript1 is older than the dummyScript3 file"
fi
