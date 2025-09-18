#!/bin/bash
c=0
for a in "$@"
do
   if [ -f "$a" ]
   then
        c=`expr $c + 1`
        echo "$a" is present in current directory
    fi
done
if [ $c -ne $# ]
then
    if [ -d "mydir" ]
    then
        echo mydir is present in current directory
        cat "mydir" | wc -l
    else
        mkdir "mydir"
    fi
fi