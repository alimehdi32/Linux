#!/bin/bash

echo "enter a number"
read num 
bin=0
multiplier=1
while [ $num -gt 0 ]
do 
    remainder=`expr $num % 2`
    bin=`expr $remainder \* $multiplier + $bin`
    multiplier=`expr $multiplier \* 10`
    num=`expr $num / 2`
done
echo "The binary equivalent is $bin"     