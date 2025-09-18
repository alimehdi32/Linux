
#!/BIN/BASH
FOR A IN "$@"
DO
   IF [ -F "$A" ]
   THEN
        LINESCOUNT=$(WC -L < "$A")
        ECHO "FILENAME: '$A', LINES: $LINESCOUNT"
    ELSE
        ECHO "'$A' IS A DIRECTORY"
    FI
DONE