#!/bin/bash




#####################
#author: Damilola ogundiran
#Date: 28th sept 2025
#version: v2
######################

#delete folder if already exist
rm -rf task_folder

#create  a new folder
mkdir task_folder

#change directory to the folder
cd task_folder

#create 3 files 
touch file_1.txt file_2.txt file_3.txt
echo "today is $(date) and i am $(whoami)"> file_3.txt

#check if backup exist, else create new one
backup="backup_file"
if [ -d "$backup" ]; then
	echo "backup directory already exist, copying...."
       	cp file_3.txt "$backup";
else
	echo "creating backup directory and copying file..."
	mkdir -p "$backup" && cp file_3.txt "$backup"
fi

#list files

ls -ltr


