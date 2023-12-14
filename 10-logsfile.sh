#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(DATE:date +%F+TIME:%H:%M:%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "$LOGFILE"

echo "script is started to executing: $TIMESTAMP"
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
   echo "ERROR:please login with root acces"
   exit 1
else
   echo "you are root user"
fi

yum install mysql -y &>> LOGFILE

VALIDATE $? "install mysql"

yum install git -y &>> LOGFILE

VALIDATE $? "install git"



