#!/bin/bash
echo " Welcome to employee wage computation "
read -p "enter the hours present  " hours
fulldayhour=8
wages=20
IsPRESENT=1 #to check with the random number generated
empcheck=$(( RANDOM%2 )) #random number generation
if [ $empcheck -eq $IsPRESENT ] #condition check
then
	echo "Employee present"
        if [ $hours -eq 8 ] #condition for fulldayhour
        then
	     totalWages=$(( fulldayhour*wages ))
	     echo "$totalWages"
        else
	     totalWages=$(( wages*hours )) #condition for other than fulldayhour
             echo "$totalWages"
        fi
else
	echo "Employee absent"
fi

