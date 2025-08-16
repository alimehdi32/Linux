#!/bin/bash

current_time=$(date +%k)
if [ $current_time -lt 12 ]
then 
    echo "Good Morning!"
elif [ $current_time -lt 18 ]
then 
    echo "Good Afternoon!"
else 
    echo "Good Evening!"
fi