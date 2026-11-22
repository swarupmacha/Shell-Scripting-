#!/bin/bash
USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "please run this script with root user"
    exit 1
fi

#by deafult shell will not executed , only executed when called
validate(){
    if [ $1 -ne 0 ]; then 
        echo "$2 .... Failure"
    else 
        echo "$2 ..... success"
    fi
}

echo "installing nginx"
dnf install nginx -y

validate $? "Nginx Installation"

