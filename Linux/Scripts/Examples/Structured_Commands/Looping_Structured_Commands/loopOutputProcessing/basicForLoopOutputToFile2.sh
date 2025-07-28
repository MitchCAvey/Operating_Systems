#!/bin/bash
# The basic structure of using the output from a for loops output
#

IFSOLD=$IFS

IFS=','

curDir=$(pwd)

echo -e "Your current directory is: $curDir \n"

#ls -laui $curDir

for file in $(ls $curDir)
do
    echo "$file"
done

IFS=$IFSOLD

