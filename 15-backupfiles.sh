#!/bin/bash

Backuptime='date+%b-%d-%y'

SOURCE_DIR="home/centos/tmp/logfiles"

DESTINATION_DIR="home/centos/tmp/logfiles/backup-$Backuptime.tar.gz

# check source dir exist or not

if [ ! -d $SOURCE_DIR ]
then 
  echo "source directory  does not exist" 
  exit 1
fi

tar -czvf $DESTINATION_DIR $SOURCE_DIR 