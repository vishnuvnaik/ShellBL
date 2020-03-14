#!/bin/bash -x
echo " Welcome to employee wage computation "
totalWorkingHours=100
wagesperhour=20
totalworkingDays=20
workingdays=0
workingHours=0
isFullTime=1
isPartTime=2
while (( workingdays < $totalworkingDays||workingHours < $totalWorkingHours )) #condition checking
do
    ((workingdays=workingdays+1)) #incrementing
    empCheck=$(( RANDOM%3 ))
    case $empCheck in
         $isFullTime ) #fulltime employee
           workingHoursperday=8
	   ;;
         $isPartTime )  #parttime check
  	   workingHoursperday=4
	   ;;
           * )
	   workingHoursperday=0 #absent employees
	   ;;
    esac
	workingHours=$(($workingHoursperday+$workingHours)); #compuation and printing
        totalwageperday=$(( $workingHoursperday*$wagesperhour )) #computation for perday
done
totalwages=$(( $totalwageperday*$totalwages)); #printing of final result
echo " total wage = $totalwages "
