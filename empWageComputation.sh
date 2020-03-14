#!/bin/bash -x
echo " Welcome to employee wage computation "
totalWorkingHours=100
wagesperhour=20
totalworkingDays=20
workingdays=0
totalwages=0
workingHours=0
isFullTime=1
isPartTime=2
getemphrs() {
    empCheck=$(( RANDOM%3 ))
    case $empCheck in
         $isFullTime ) #fulltime employee
           workingHoursperday=8
	   ;;
         $isPartTime )  #parttime check
  	   workingHoursperday=4
	   ;;
    esac
        echo "$workingHoursperday"
}
getemphrs
while (( $workingdays<$totalworkingDays&&$workingHours<$totalWorkingHours )) #loop to check the condition of days and hours
do
        ((workingdays++)) #incrementing of workingdays
	workingHours=$(( $workingHoursperday+$workingHours )) #compuation and printing
        totalwageperday=$(( $workingHours*$wagesperhour )) #computation of wages per day
        totalwages=$(( $totalwageperday+$totalwages )) #printing of final result
done
echo "total wage = $totalwages"
