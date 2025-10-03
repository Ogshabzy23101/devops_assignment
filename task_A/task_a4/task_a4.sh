#!/bin/bash


#######################
####author: Damilola ogundiran
####Date: 28th sept 2025
####version: v2
#########################

set -euo pipefail

#create a branch for task a4
	git checkout -b taska4

#set a variable for the task folder
	taskfolder="task_folder"

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

#create a sample file
	echo "this is a sample file" > samplefile.txt

#add changes to git then commit and push to origin
	git add .
	git commit -m "task folder and sample file created and added"
	git push origin taska4

#create a new branch for modifying sample file
	git checkout -b taska4_feature

#modify sample file
	echo "sample file has now been modify" >> samplefile.txt

#add to git then commit and modify
	git add .
	git commit -m "sample file modify"
	git push origin taska4_feature

#switch to taska4 branch and merge
	git checkout taska4 && git merge taska4_feature

	echo "script run succesfully"



