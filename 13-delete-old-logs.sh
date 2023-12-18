#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

if [ ! -d $SOURCE_DIR ]
then
   echo " source directory $SOURCE_DI does not exist"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
echo "Deleting file: $line"

done <<< $FILES_TO_DELETE



