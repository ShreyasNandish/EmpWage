
#! /bin/bash -x

echo " Hello welcome to Employee wage program"

ispresent=1;
empRateperhour=20;
empfulldayhour=8;
emphalfdayhour=4;
Monthworkdays=20;

empcheck=$((RANDOM%3))

case $empcheck in
	0)
		 echo "Employee is working full time"
	         DailyWage=$(($empRateperhour * $empfulldayhour))
		 MonthlyWage=$(($DailyWage*$Monthworkdays))
        	 echo "Emploee daily wage is" $DailyWage
		 echo "Employee monthly wage is" $MonthlyWage;;
	1)
                 echo "Employee is working part time"
                 DailyWage=$(($empRateperhour * $emphalfdayhour))
		 MonthlyWage=$(($DailyWage*$Monthworkdays))
	         echo "Emploee daily wage is" $DailyWage
		 echo "Employee monthly wage is" $MonthlyWage;;
	2)
		echo "Employee is absent";;
esac



