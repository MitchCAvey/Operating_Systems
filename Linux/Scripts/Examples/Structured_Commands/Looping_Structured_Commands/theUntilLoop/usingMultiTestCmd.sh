#!/bin/bash
# Using the Until Command with multiple test commands
#
#

var1=100

until echo $var1
	[ $var1 -eq 0 ]
do
	echo "Inside the loop: $var1"
	var1=$[ $var1 - 25 ]
done
