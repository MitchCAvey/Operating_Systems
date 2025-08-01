#!/bin/bash
# Getting just one caracter from the input provided to 
# the read command
#

read -n1 -p "Do you want to continue [Y/N]?: " answer

case $answer in
    Y | y) echo
	echo "fine, Continue...";;
    N | n)
	echo
	echo "Okay, goodby"
	exit;;
esac

echo "This is the end of the script"
echo
