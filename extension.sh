ls | for a in *.c
	do 
	   name=$(echo "$a" | cut -d "." -f 1)
	   mv "$a" "$name".cpp
	done

