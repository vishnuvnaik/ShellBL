<<<<<<< HEAD
#!/bin/bash -x
=======
#!/bin/bash 
>>>>>>> 5dd460bd4fb5d693d7352ead6637e3cda640fdb7
echo " Welcome to employee wage computation "
IsPRESENT = 1 #to check with the random number generated
empcheck = $(( RANDOM%2 )) #random number generation
if [ $empcheck -eq $IsPRESENT ] #condition check
then 
	echo "Employee present"
else
	echo "Employee absent"
fi

