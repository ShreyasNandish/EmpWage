#!/bin/bash -x

Wage=()

Monthworkdays=20
empRateperhour=20
FullDayHour=8
HalfDayHour=4

daily_Wage=0
monthly_Wage=0

for i in `seq $Monthworkdays`
do
	random=$(( $RANDOM % 3 ))


        case $random in

	1)
                daily_Wage=$(( $empRateperhour * $FullDayHour ))
        ;;

	2)
                daily_Wage=$(( $empRateperhour * $HalfDayHour ))
        ;;

	*)
                #Absent
		daily_Wage=0
        ;;

        esac

	Wage[$i]=$daily_Wage

monthly_Wage=$(( $monthly_Wage + $daily_Wage ))

done

	Wage[$(( $i + 1))]=$monthly_Wage

echo ${!Wage[@]}

echo ${Wage[@]}

