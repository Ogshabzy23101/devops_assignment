# task 4 description

# Task A4 – Git basics: init, branch, commit, merge

## �� Objective
 1. Initialize a git repo in devopstest

 2. Create a new file and commit it on main branch

 3. Create and switch to a feature branch

 4. Modify or add a file, commit on feature branch

 5. Switch back to main and merge the new branch

## 🛠️ Steps Taken
1. Created a new folder called `www`
  
   ```bash
   rm -rf task_folder(incase the folder already exist)
   mkdir task_folder

2. Navigate into the folder

   ```bash
    cd task_folder

3. create a sample file
   ```bash
    echo "...some text">samplefile.txt

4. add the file to git and commit
    ```bash
    git add . && git commit -m "comit text"

5. switch to a new branch
    ```bash
    git checkout -b taska4_feature

5. modify sample file
    ```bash
    echo "...text" >> samplefile.txt

6. add modified file and commit
    git add samplefile.txt && git commit -m "....commit txt"

7. switch back to taska4 branch and merge
    ```bash
    git checkout taska4 && git merge taska4_feature



### Script
    see [`task_a4.sh`]

### output
    script run succesfully
    a task folder with sample file will be found in the taska4 
    
