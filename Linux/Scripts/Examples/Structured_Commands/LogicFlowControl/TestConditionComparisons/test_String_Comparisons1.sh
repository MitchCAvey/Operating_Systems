#!/bin/bash
# Testing string equality
#
testuser=rich

if [ $USER = $testuser ]
then
	echo "Welcome $testuser!"
fi
