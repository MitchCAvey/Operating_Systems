#!/bin/bash
# Reading data from a file using the read command
#

cat test.txt | while read line
do
    echo "Line $count: $line"
    count=$[ $count + 1 ]
done

echo "Finished processing the file"
echo

