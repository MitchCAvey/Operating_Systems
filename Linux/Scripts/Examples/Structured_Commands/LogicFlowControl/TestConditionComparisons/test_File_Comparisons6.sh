#!/bin/bash
# Check if either a directory or file exists
#
item_name="$SHELLSCRIPTS/Examples/Structured_Commands/LogicFlowControl/TestConditionComparisons/sentinel"
echo
echo "The item being checked: $item_name"
echo
#
if [ -e $item_name ]
then # Item does exist
	echo "The item, $item_name, does exist."
	echo "But is it a file?"
	echo
	if [ -f $item_name ]
	then
		echo "Yes, $item_name is a file."
		echo "But is it writable?"
		if [ -w $item_name ]
		then
			echo "Writing current time to $item_name"
			date +%H%M >> $item_name
		else
			echo "Unable to write to $item_name"
		fi
	else # Item is a file
		echo "No, $item_name is a file"
	fi
else # Item does not exist
	echo "the item, $item_name, does not exist."
	echo "Nothing to update"
fi
