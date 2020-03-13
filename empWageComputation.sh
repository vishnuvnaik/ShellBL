#!/bin/bash -x
echo " Welcome to employee wage computation "
IsPRESENT = 1
empcheck = $(( RANDOM%2 ))
if [ $empcheck -eq $IsPRESENT ]
then 
	echo "Employee present"
else
	echo "Employee absent"
fi

