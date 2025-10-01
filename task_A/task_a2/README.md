# task 2 description

# Task A2 – File permissions and chmod (Beginner / Security basics)

## �� Objective
-create a sample key file
-learn chmod 600 vs 400
-observe ls -l output

## 🛠️ Steps Taken
1. Created a new folder called `task_folder`
  
   ```bash
   rm -rf task_folder(incase the folder already exist)
   mkdir task_folder

2. Navigate into the folder

   ```bash
    cd task_folder 

3. create key file
   ```bash
    touch samplekey.pem

4. add content into the key file
    ```bash
    echo "...text">samplekey.pem

5. verify the content of the key file
    ```bash
    cat samplekey.pem

5. grant permission to the key file
    chmod 600 samplekey.pem

6. observe the output
    ls -l samplekey.pem

7. change permission to 400 
    ```bash
    chmod 400 samplekey.pem

8.observe the output
    ls -l samplekey.pem 

### Script
    see [`task_a2.sh`]

### output
    creating task folder
-rw------- 1 damilola damilola 92 Oct  1 16:23 samplekey.pem
-r-------- 1 damilola damilola 92 Oct  1 16:23 samplekey.pem
-rw------- 1 damilola damilola 92 Oct  1 16:23 samplekey.pem
script run successfully


