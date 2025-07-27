#!/bin/bash
# The basic structure of using the output from a for loops output
#

for file in $(ls /home/mitchavey/*)
do
    echo $file
done
