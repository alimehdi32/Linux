#!/bin/bash
echo "Enter Year"
read year

if [[ -z $year ]]
then 
    year=$(date +%Y)
    echo "Current year is $year"
fi

if [[ $((year % 400)) -eq 0 ]]
then
    echo "Leap year"
elif [[ $((year % 100)) -eq 0 ]]
then
    echo "Not Leap year"
elif [[ $((year % 4)) -eq 0 ]]
then
    echo "Leap year"
else
    echo "Not Leap year"
fi