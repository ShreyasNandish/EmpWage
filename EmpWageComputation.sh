#!/bin/bash -x

TotalWorkingHrs() {
while [[ $totalEmpHrs -ne $MaxWorkinghourinmonth && $totalWorkingDays -ne $Monthworkdays ]]
do
        ((totalWorkingDays++))
        random=$(( $RANDOM % 3 ))


        case $random in
        1)
                #Present fullday
                empHrs=8
                ;;
        2)
                #Present halfday
                empHrs=4
                ;;
        *)
                #absent
                empHrs=0
                ;;
        esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done
}

Monthworkdays=20
MaxWorkinghourinmonth=100
WagePerHour=20
FullDayHour=8
HalfDayHour=4
monthly_Wage=0

totalEmpHrs=0
totalWorkingDays=0

echo "Calculate work hours for one month"

TotalWorkingHrs

echo "Total working hours for a month $totalEmpHrs"



