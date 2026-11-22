#!/bin/bash
set -e
trap 'echo "there is error at $LINENO, COMMAND: $BASH_COMMAND"' ERR


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripting"
LOGS_FILE="/var/log/shell-scripting/$0.log"

if [ "$USERID" -ne 0 ]; then
    echo "please run this script with root user" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p /var/log/shell-scripting

validate(){
    if [ $1 -ne 0 ]; then 
        echo "$2 .... Failure" | tee -a $LOGS_FILE
    else 
        echo "$2 ..... success" | tee -a $LOGS_FILE
    fi
}

for package in $@
do 
    dnf list installed $package
    if [ $? -ne 0 ]; then 
        echo "$package is installing now"
        dnf install $package -y  &>> LOGS_FILE # sh 13.loop.sh nginx mysql 
        #validate $? "$package installtion"
    else 
        echo "$package is already installed,skipping"
    fi
done
