#!/bin/bash

ID=$(id -u)
 
if [ $ID -ne 0 ]
then 
   echo "ERROR:please login with root acces"
   exit 1
else
   echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
   echo "install mysql is failed"
   exit 1
else
   echo "install mysql is success"
fi      