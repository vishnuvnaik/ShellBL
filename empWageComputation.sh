#!/bin/bash -x
echo " Welcome to employee wage computation "
totalWorkingHours=100
wagesperhour=20
totalworkingDays=20
totalwagesperday=0
workingdays=0
totalwages=0
workingHours=0
isFullTime=1
isPartTime=2
getemphrs() { #function
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
while (( $workingdays<$totalworkingDays&&$workingHours<$totalWorkingHours )) #loop to check the condition of days and hours
do
       	empCheck=$(( RANDOM%3 ))
        workingHoursperday="$( getemphrs $empCheck )"
	workingHours=$(( $workingHoursperday+$workingHours )); #compuation and printing
	(( workingdays++))
        dailyWage[totalwagesperday]=$(( $workingHoursperday*$wagesperhour )) #Array for daily wage
done
totalwages=$(( $workingHours*$wagesperhour )) #calculation of  total wage
dailyWage[totalwagespermonth]=$totalwages #totalwage is stored in the array
echo "${dailyWage[@]}" #printing array

