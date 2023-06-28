#!/bin/bash

i=0              # Variable used in loop
result=0         # Variable used to return result of operation
temp=0		 # Variable used to decrement values being multiplied

# Checks if user input more or less than one parameter
if [ $# -ne 1 ] ; then
        echo Error: Must have exactly one input parameter
        exit 1

# Checks if input given by user is a number
elif ! [[ $1 =~ ^-?[[:digit:]]*$ ]]; then
        echo Error: Script only takes a digit as an input parameter
	exit 1
else
	# Checks if user inputs 0, in which case returns 1
	if [ $1 -eq 0 ]; then
		echo 1

	# Branch used to handle condition that user enters positive number	
	elif [ $1 -gt 0 ]; then
		i=$(($1-1))
		result=$1
		
		# Loops through each multiplication operation up until and incluiding when the multiplier is 1
		until [ $i -eq 0 ]
		do
			result=$(($result*$i))	
			i=$(($i-1))
		done
		echo $result

	# Branch used to handle condition that user enters negative number
	else
		echo Please enter a number greater than or equal to 1

	fi
fi


