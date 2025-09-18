#!/bin/bash
c=0
for a in $@
do
    c=$(echo $a | tr -cd "." | wc -c)
    file=$(echo $a | cut -d "." -f 1)
    for (( i=1; i<$c; i++ ))
    do
        file=$file.$(echo $a | cut -d "." -f $((i+1)))
        echo $file
    done
    mv $a $file
    echo "Final file name: $file"
done

echo "Total files processed: $c"