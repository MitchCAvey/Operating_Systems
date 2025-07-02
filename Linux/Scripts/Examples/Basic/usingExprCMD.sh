#!/bin/bash
# An example of using the expr command in a shell script


var1=10
var2=20
var3=$(expr $var2 / $var1)
echo The result is $var3
