#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripting"
LOGS_FILE="/var/log/shell-scripting/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ "$USERID" -ne 0 ]; then
    echo "$R please run this script with root user $N" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p /var/log/shell-scripting

validate(){
    if [ $1 -ne 0 ]; then 
        echo "$2 .... $R Failure $N" | tee -a $LOGS_FILE
    else 
        echo "$2 .....$G success $N" | tee -a $LOGS_FILE
    fi
}

for package in $@
do 
    dnf list installed $package
    if [ $? -ne 0 ]; then 
        echo "$package is installing now"
        dnf install $package -y  &>> LOGS_FILE # sh 13.loop.sh nginx mysql 
        validate $? "$package installtion"
    else 
        echo "$package is already installed,skipping"
    fi
done
