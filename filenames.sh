
#!/bin/bash
for a in "$@"
do
   if [ -f "$a" ]
   then
        linesCount=$(wc -l < "$a")
        echo "Filename: '$a', Lines: $linesCount"
    else
        echo "'$a' is a directory"
    fi
done