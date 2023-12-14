#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date+%F:%H:%M:%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
     if [ $1 -ne 0 ]
    then
    echo -e "ERROR: $2.. is $R failed $N"
    exit 1
    else
    echo -e "$2  is $G success $N"
    fi    
}

if [ $ID -ne 0 ]
   then 
   echo "ERROR:please login with root user"
   else
   echo "you are root user"
fi

for package in $@
  do
    yum list installed $package
    if [ $? -ne 0 ]
    then
       yum install $package -y
       VALIDATE $? "install $package"
    else
       echo "$package already installed"   
  done

