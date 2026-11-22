#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-scripting"
LOGS_FILE="/var/log/shell-scripting/$0.log"

if [ "$USERID" -ne 0 ]; then
    echo "please run this script with root user"
    exit 1
fi

mkdir -p /var/log/shell-scripting

validate(){
    if [ $1 -ne 0 ]; then 
        echo "$2 .... Failure"
    else 
        echo "$2 ..... success"
    fi
}

dnf install nginx -y &>> $LOGS_FILE
validate $? "Nginx Installation"

dnf install mysql -y &>> $LOGS_FILE
validate $? "Nginx Installation"
