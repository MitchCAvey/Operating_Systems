#!/bin/bash
# Piping a loop to another command
#

for state in "North Dakota" Connecticut Illinois Alabama tennessee
do
    echo "$state is the next place to go"
done | sort > states.txt


IFSOLD=$IFS

IFS=','

for state2 in "North Dakota" Connecticut Illinois Alabama Tennessee
do
    echo "$state2"
done | sort > states2.txt




IFS=$IFSOLD


