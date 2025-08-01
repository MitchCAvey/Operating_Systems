#!/bin/bash

# Timing the data entry
#

if read -t 5 -p "Please enter your Name: " name
then
    echo "Hello $name, welcome to my script"
else
    echo
    echo "Sorry, to slow!"
fi

echo
