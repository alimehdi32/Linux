#!/bin/bash
echo Enter a number
read num
n=$num
octal=0
mult=1
while [ $n -gt 0 ]
do 
    rem=`expr $n % 8`
    octal=`expr $rem \* $mult + $octal`
    n=`expr $n / 10`
    mult=`expr $mult \* 10`
done
echo "The octal equivalent of $num is $octal"