# task 1 description

# Task 1 – Create a Directory and File

## �� Task Description
The goal of this task is to create a directory, then create a file inside it using Linux commands.

---

## 🛠️ Steps Taken
1. Created a new folder called `task_folder`
  
   ```bash
   rm -rf task_folder(incase the folder already exist)
   mkdir task_folder

2. Navigate into the folder

   ```bash
    cd task_folder 

3. create new files called file1.txt file2.txt file3.txt
   ```bash
    touch file1.txt file2.txt file3.txt

4. add text into file3.txt
    ```bash
    echo "...text">file3.txt

5. verify the content of file3
    ```bash
    cat file3.txt

5. create a backup folder
    mkdir backup (best practice, check if the file already exist by using the if script command)

6. copy file3 inside backup folder
