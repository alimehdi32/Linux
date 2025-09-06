#!/bin/bash
for a in *
do
   if [ ! -s "$a" ]
      then 
              echo "Removing empty file $a"
              rm -i "$a"
      fi
done
     