#!/bin/bash
for a in *.*
do
    cat $a > file.txt
    if grep -q "jamia" file.txt
    then 
        echo "$a"
        rm file.txt
        break
    fi
    rm file.txt
done