#!/bin/bash

#######################
###author: Damilola ogundiran
###Date: 28th sept 2025
###version: v2
########################

set -euo pipefail

##set a variable for the task folder
taskfolder="www"

##check if task folder already exist
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


#create index page
echo "hello world my name is damilola and i am an aspiring dev ops engineer"> index.html

#start the http server
nohup python3 -m http.server 8000 > server.log 2>&1 &
echo $!>server.pid

#verify with curl
 curl -i http://localhost:8000

#stop using the safe pid
kill $( cat server.pid )

#delete the pid
rm -rf server.pid











