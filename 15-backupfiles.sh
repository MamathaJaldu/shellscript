#!/bin/bash

Backuptime=$(date+%b-%d-%y)

SOURCE_DIR="/tmp/logfiles"

DESTINATION_DIR="/tmp/logfiles/backup-$Backuptime.tar.gz

# check source dir exist or not
if [ ! -d $SOURCE_DIR ]
then 
echo "source directory $SOURCE_DIR does not exist" 
fi

tar -cvzf $DESTINATION_DIR $SOURCE_DIR   #create backup

