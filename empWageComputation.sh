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
    case $hourCheck in
         $isFullTime ) #check for fulltime employee
           workingHours=8 #fulltime working hours
	   totalWages=$(( workingHours * wages ))
	   echo "full time wage = $totalWages" #printing wages
	;;
        $isPartTime )  #parttime check
  	   workingHours=4
	   totalWages=$(( workingHours * wages ))
	   echo "parttime wage = $totalWages" #printing part time wages
	;;
    esac
	echo "employee is Absent"
else
   echo "employee is absent"
fi
