#!/bin/bash

var1=10
var2=30

var3=$[$var1 + $var2]
echo "The answer is $var3"
exit 5

# after you run this command from the command line, 
# use the command echo to display the exit status of the 
# script that just ran.
# e.g. echo $?
