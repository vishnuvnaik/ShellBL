#!/bin/bash -x
echo " Welcome to employee wage computation "
IsPRESENT = 1 #to check with the random number generated
empcheck = $(( RANDOM%2 )) #random number generation
if [ $empcheck -eq $IsPRESENT ] #condition check
then 
	echo "Employee present"
else
	echo "Employee absent"
fi

