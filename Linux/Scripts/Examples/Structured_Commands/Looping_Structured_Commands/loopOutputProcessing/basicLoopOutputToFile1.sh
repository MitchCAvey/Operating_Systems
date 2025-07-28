#!/bin/bash
# This is going to be the basic shell that will be
# built upon to the finished version
#

#for file in /home/mitchavey/*
#do
#    #echo $file
#
#    if [ -d "$file" ]
#    then
#	echo "$file is a directory"
#    fi
#done

echo

#for file2 in $(ls /home/mitchavey/*)
#do
#    if [ -d "$file" ]
#    then
#   	echo "$file2 is a directory"
#    fi
#done

### For testing something ##
#pwd

IFSOLD=$IFS

IFS=','

curDir=$(pwd)

echo -e "Your current Directory is: $curDir"

#ls -laui $curDir

#echo $(ls -laui $curDir/controllingLoops)

for file in $(ls -laui $curDir/controllingLoops)
do
    #echo -e "$file \n"
    if [ -f "$file" ]
    then
	echo -e "Marked File: $file \n"
    fi
done

#curDir=$(pwd)
#item1="apples,bananas,oranges"

#for otpt in $item1
#do
#    echo "Fruit: $otpt"
#done


#for otpt in $(ls -laiu $curDir)
#do
#    echo $otpt
#done


dirContCheck=$(ls -luai /home/mitchavey)
dirContCheck2=$(ls -laui)



#echo "$dirContCheck\n"

#echo "$dirConCheck2\n"

#for file3 in $dirContCheck
#do
#    echo $file3
#done


IFS=$IFSOLD


# File Notes Before moving on (07/27/205)
# I find myself stuck trying to figure out a way to get just the data 
# I want from the output, and display it in a meaningful way 
