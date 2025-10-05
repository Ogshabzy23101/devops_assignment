#!/bin/bash
#
########################
####author: Damilola ogundiran
####Date: 28th sept 2025
####version: v2
#########################

set -euo pipefail

#set a variable for the task folder
taskfolder="logs"

#check if task folder already exist
if [ -d "$taskfolder" ]; then
	echo "overwriting task_folder";
	rm -rf "$taskfolder"
else
	echo "creating task folder";
fi

#create new taskfolder
	mkdir -p "$taskfolder"
#change directory to taskfolder
	cd "$taskfolder"
 
	echo "pass line 1"

#Create 5 log files
echo "creating multiple file"
for i in {1..5}; do 
	echo "here is a log file for file_$i created on $(date)" > file_$i.log
done
 echo "pass line 2"

#find file older than 0 days
find . -name "*.log" -type f -mtime +0 | while read file; do 
gzip "$file";
done

echo "pass line 3"

#list compress file
 ls -l .

 echo "task completed"




