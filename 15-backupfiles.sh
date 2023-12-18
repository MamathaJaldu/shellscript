#!/bin/bash

Backuptime='date+%b-%d-%y'

SOURCE_DIR="/tmp/logfiles"

DESTINATION_DIR="/tmp/logfiles/backup-$Backuptime

# check source dir exist or not

if [ ! -d $SOURCE_DIR ]
then 
  echo "source directory  does not exist" 
  exit 1
fi

tar -czvf "$DESTINATION_DIR" $SOURCE_DIR 

