#! /bin/bash -x

echo " Hello welcome to Employee wage program"

ispresent=1;
empRateperhour=20;
empfulldayhour=8;
<<<<<<< HEAD
empcheck=$((RANDOM%2))

if(($ispresent==$empcheck))
then
        echo "Employee is Present"
        salary=$(($empRateperhour*$empfulldayhour))
        echo $salary
else
        echo "Employee is absent"
=======
emphalfdayhour=4;

empcheck=$((RANDOM%2))
DailyWage=0;

a=$((RANDOM%3))

if [ $a -eq 0 ]
then
        echo "Employee is working full time"
	DailyWage=$(($empRateperhour * $empfulldayhour))
        echo "Emploee daily wage is" $DailyWage

elif [ $a -eq 1 ]
then
        echo "Employee is working part time"
        DailyWage=$(($empRatePerHour * $emphalfdayhour))
        echo "Emploee daily wage is" $DailyWage

else
	echo "Employee is absent"
>>>>>>> 8965ae1cc2e9ddd66b83a70d62dc9e3fa93b1635
fi

