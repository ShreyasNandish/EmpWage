#!/bin/bash -x

echo "Attendence"
random=$(($RANDOM % 2))

if [ $random -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
