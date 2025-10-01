#!/bin/bash

######################
##author: Damilola ogundiran
##Date: 28th sept 2025
##version: v2
#######################

set -euo pipefail

#set a variable for the task folder
taskfolder="task_folder"

#check if task folder already exist
if [ -d "$taskfolder"]; then
	echo "overwriting task_folder";
	rm -rf "$taskfolder"
else
	echo "creating task folder";
fi

#create new taskfolder
mkdir -p "$taskfolder"

#change directory to taskfolder
cd "$taskfolder"

#create a dummy key file
echo "this is just a dummy key-vhfdvtihit rygrutjbvfyuitvt f uidc iudf gyfyfvrygsijixsakAJDW WRGY">samplekey.pem

#grant permission
chmod 600 samplekey.pem

#check the output
ls -l samplekey.pem

#change permission to 400
chmod 400 samplekey.pem

#check the output
ls -l samplekey.pem

#change permission back to 600
chmod 600 samplekey.pem

#check the output
ls -l samplekey.pem

echo "script run successfully"




