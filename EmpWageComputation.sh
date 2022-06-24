#! /bin/bash -x

echo " Hello welcome to Employee wage program"

ispresent=1;
empRateperhour=20;
empfulldayhour=8;
empcheck=$((RANDOM%2))

if(($ispresent==$empcheck))
then
        echo "Employee is Present"
        salary=$(($empRateperhour*$empfulldayhour))
        echo $salary
else
        echo "Employee is absent"
fi

