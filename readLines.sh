echo Enter filename
read file
echo enter position and number of lines to be deleted
read pos num
n=1
while IFS= read -r line
do
    if [ $n -lt $pos ] || [ $n -ge ` expr $pos + $num ` ]
    then 
         echo linenumber: $n line: $line >> file1
    fi
    n=` expr $n + 1`
done < $file
mv file1 $file
