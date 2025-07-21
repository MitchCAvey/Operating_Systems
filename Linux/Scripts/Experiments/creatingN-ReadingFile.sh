#!/bin/bash

# This script will test creating a file from a list and than reading from it.
#

list="Alabama Alaska Arizona Arkansas Colrado"

filename="states.txt"

if [ -f ./Experiments/$filename ]
then
	echo "File already exisit"
else
	echo "File doesn't exisit"
fi
