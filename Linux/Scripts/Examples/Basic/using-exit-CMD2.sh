#!/bin/bash
# Testing the exit status and what values I can assign it
#

var1=10
var2=30

var3=$[$var1 * $var2]

echo "The answer is $var3"
exit $var3
