#!/bin/bash -x
echo " Welcome to employee wage computation "
totalWorkingHours=100 #declaring constants
wagesperhour=20
totalworkingDays=20
isFullTime=1
isPartTime=2
totalwagesperday=0 #declaring constants
workingdays=0
totalwages=0
workingHours=0
declare -A dailyWagee #dictionary declared
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
getwages() {
totalwages=$(( $workingHours*$wagesperhour )) #calculation of  total wage
dailyWagee["$day $workingdays"]=$(( $workingHoursperday*$wagesperhour )) #Dictionary for daily wage

}
while (( $workingdays<$totalworkingDays&&$workingHours<$totalWorkingHours )) #loop to check the condition of days and hours
do
	empCheck=$(( RANDOM%3 ))
        workingHoursperday="$( getemphrs $empCheck )"
	workingHours=$(( $workingHoursperday+$workingHours )); #compuation and printing
	(( workingdays++))
        day="Day"
done
getwages
dailyWagee[permonth]=$(( $totalwages )) #totalwage is stored in the dictionary
echo "${dailyWagee[@]}" #printing dictionary
echo "${!dailyWagee[@]}"
