#!/bin/bash

IFSOLD=$IFS

IFS=$':'

filename="testFile.txt"
line="one two three"

for word in $(cat testFile.txt)
do
    IFS=','
    echo "${word[*]}"
done

IFS=$IFSOLD
