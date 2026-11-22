#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

LOGS_DIR=/home/ec2-user/app-logs
LOGS_FILE="$LOGS_DIR/$0.log"

if [ ! -d $LOGS_DIR ]; then
    echo -e "$LOGS_DIR doesnot exist"
    exist 1
fi

FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -mtime +14)
#echo "$FILES_TO_DELETE"

while IFS read -r filepath; do 
    # process each line here
    echo "DELETING THE FILE : $filepath"
    rm -f $filepath
    echo "Deleting file: $filepath"
done <<< $FILES_TO_DELETE # input which file to read
