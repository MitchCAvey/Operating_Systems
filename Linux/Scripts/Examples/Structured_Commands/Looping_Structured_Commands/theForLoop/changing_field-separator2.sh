#!/bin/bash

IFS=$' '

filename="testFile.txt"
line="one two three"

for word in $(cat testFile.txt)
do
    echo "$word"
done
