#!/bin/bash -x
echo " Welcome to employee wage computation "
wages=20
workingDays=20
IsPRESENT=1 #to check with the random number
isFullTime=1
isPartTime=2
empcheck=$(( RANDOM%2 )) #random number generation
if [ $empcheck -eq $IsPRESENT ] #condition check for employee attendance
then
    hourCheck=$(( RANDOM%3 ))
    case $hourCheck in
         $isFullTime ) #check for fulltime employee
           workingHours=8
	   echo "fulltime worker " #fulltime working hours
	;;
        $isPartTime )  #parttime check
  	   workingHours=4
	   echo "Part time worker "
	;;
    esac
	totalwageperday=$(( $workingHours * $wages )) #computation for permonth
	wagespermonth=$(( $totalwageperday * $workingDays))
	echo "wages per month  = $wagespermonth"
else
   echo "employee is absent"
fi
