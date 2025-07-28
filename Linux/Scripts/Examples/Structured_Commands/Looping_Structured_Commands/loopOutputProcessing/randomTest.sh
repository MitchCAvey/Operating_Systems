#!/bin/bash


pwd | ls

for file in $(pwd | ls)
do
    #echo -e "Output: $file \n"
    if [ -f "$file" ]
    then
	echo -e "This Is A File: $file "
    else
	echo -e "You don't have files in this output"
    fi
done > currentFileList.txt



