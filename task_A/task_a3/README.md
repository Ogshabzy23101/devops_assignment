# task 3 description

# Task A3 – Simple HTTP server & curl (Beginner / Networking)

## �� Objective
-start a simple server
-verify its serve file using curl
-stop it

## 🛠️ Steps Taken
1. Created a new folder called `www`
  
   ```bash
   rm -rf task_folder(incase the folder already exist)
   mkdir www

2. Navigate into the folder

   ```bash
    cd www 

3. create a simple web page
   ```bash
    echo "...some text">index.html

4. start the server
    ```bash
    nohup python3 -m http.server 8000 > server.log 2>&1 &

5. save process id in server.pid
    ```bash
    echo $! > server.pid

5. wait 5s for the server to serve file
    ```bash
    sleep 5

6. verify with curl
    curl -I http://localhost:8000

7. stop server using the pid
    ```bash
    kill $( cat server.pid) 

8.delete the pid file
    rm server.pid 

### Script
    see [`task_a3.sh`]

### output
    overwriting task_folder
HTTP/1.0 200 OK
Server: SimpleHTTP/0.6 Python/3.12.3
Date: Thu, 02 Oct 2025 15:02:37 GMT 
Content-type: text/html
Content-Length: 70
Last-Modified: Thu, 02 Oct 2025 15:02:35 GMT
    
