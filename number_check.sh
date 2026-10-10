#!/bin/bash
set -euo pipefail
read -p "Enter a number: " NUM
if [[ ! "$NUM" =~ ^-?[0-9]+$ ]]; then
	echo "Error: $NUM is not a valid interger."
	exit 1
fi
if [ $NUM -gt 0 ]; then 
	echo "$NUM is positive"
elif [ $NUM -lt 0 ]; then
	echo "$NUM is negative"
else
	echo "$NUM is zero"
fi
