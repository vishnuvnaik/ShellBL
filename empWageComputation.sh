#!/bin/bash -x
echo " Welcome to employee wage computation "
partTimeHour=4
wages=20
IsPRESENT=1
isFullTime=1
isPartTime=2 #to check with the random number generated
empcheck=$(( RANDOM%2 )) #random number generation
if [ $empcheck -eq $IsPRESENT ] #condition check for employee attendance
then
    hourCheck=$(( RANDOM%3 ))
    if [ $hourCheck -eq $isFullTime ] #check for fulltime employee
    then
        workingHours=8 #fulltime working hours
	totalWages=$(( workingHours * wages ))
	echo "full time wage = $totalWages" #printing wages
    elif [ $hourCheck -eq $isPartTime ]  #parttime check
	then
  	    workingHours=4
	    totalWages=$(( workingHours * wages ))
	    echo "parttime wage = $totalWages" #printing part time wages
    else
	echo "employee is Absent"
    fi
else
    echo "employee is absent"
fi
