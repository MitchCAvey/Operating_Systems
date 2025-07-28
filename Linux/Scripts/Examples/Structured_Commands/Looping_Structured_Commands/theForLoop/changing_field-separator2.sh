#!/bin/bash

IFSOLD=$IFS

IFS=$':'

filename="testFile.txt"
line="one two three"

for word in $(cat testFile.txt)
do
    echo "$word,"
done

IFS=$IFSOLD
