#!/bin/bash
# Breaking out of an outer loop
#

for (( a = 1; a < 4; a++ ))
do
    echo "Outer Loop: $a"

    for (( b = 1; b < 100; b++ ))
    do
	if [ $b -gt 4 ]
	then
	    break 2
	fi

	echo "	Inner Loop: $b"
    done
done
