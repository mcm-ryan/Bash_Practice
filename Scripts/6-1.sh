#!/bin/bash


i=0		 #Variable used in loop
result=0	 #Variable used to return result of operation

# Checks if user input more or less than two parameters
if [ $# -ne 2 ] ; then
	echo Error: Must have exactly two input parameters
	exit 1

# Checks if input given by user are not numbers
elif ! [[ $1 =~ ^-?[[:digit:]]*$ ]] || ! [[ $2 =~ ^-?[[:digit:]]*$ ]]; then
	echo Error: Script only takes digits as input parameters
	exit 1

# Proceeds with operation if the only two digits are given as input
else

	# If statement to handle condition of second input being 0
	if [ $2 -eq 0 ]; then
		if [ $1 -eq 0 ]; then
			echo 0^0 = undefined
		else
			echo 1
		fi

	# Branch for handling the second parameter when it is positive 	
	elif [ $2 -gt 0 ]; then
		i=$(($2-1))
		result=$1

		until [ $i -eq 0 ];
		do
			result=$(($result*$1))
			i=$(($i-1))
		done
		echo $result

	# Else handling the case where the exponent is negative
	else
		if [ $1 -eq 0 ]; then
			echo 0^-n = undefined
		else
			i=$(($(($2*-1))-1))
                	result=$1

                	until [ $i -eq 0 ];
                	do
                       		result=$(($result*$1))
                	        i=$(($i-1))
        	        done
			echo 1/$result

		fi
			

	fi
fi






