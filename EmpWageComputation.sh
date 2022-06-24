
#! /bin/bash -x

echo " Hello welcome to Employee wage program"

ispresent=1;
empRateperhour=20;
empfulldayhour=8;
emphalfdayhour=4;

empcheck=$((RANDOM%3))

case $empcheck in
	0)
		 echo "Employee is working full time"
	         DailyWage=$(($empRateperhour * $empfulldayhour))
        	 echo "Emploee daily wage is" $DailyWage;;
	1)
                 echo "Employee is working part time"
                 DailyWage=$(($empRateperhour * $emphalfdayhour))
                 echo "Emploee daily wage is" $DailyWage;;
	2)
		echo "Employee is absent";;
esac



