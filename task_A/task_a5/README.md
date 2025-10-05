b Exercise: Finding and Compressing Old Log Files

Let me walk you through this step-by-step!

## Step 1: Create Test Log Files

bash
#!/bin/bash

# Create a logs directory
mkdir -p logs
cd logs

# Create 5 log files with current timestamp
for i in {1..5}; do
    echo "Log entry from application $i at $(date)" > "app$i.log"
done

echo "Created 5 log files"
ls -lh


## Step 2: Make Some Files “Old”

Since we need files older than 0 days (not modified today), we need to change their modification time:

bash
# Make files 1, 2, and 3 appear as if they were created yesterday
touch -t $(date -d "yesterday" +%Y%m%d%H%M) app1.log
touch -t $(date -d "yesterday" +%Y%m%d%H%M) app2.log
touch -t $(date -d "yesterday" +%Y%m%d%H%M) app3.log

# Leave app4.log and app5.log with today's date

echo "Modified timestamps for app1, app2, app3"
ls -lh


## Step 3: Find and Gzip Old Log Files

bash
#!/bin/bash

echo "Finding log files older than 0 days..."
echo "========================================="

# Find and display files that will be compressed
find logs -name "*.log" -type f -mtime +0

echo ""
echo "Compressing old log files..."
echo "========================================="

# Loop through and gzip each old log file
for logfile in $(find logs -name "*.log" -type f -mtime +0); do
    echo "Compressing: $logfile"
    gzip "$logfile"
    
    if [ $? -eq 0 ]; then
        echo "✓ Successfully compressed to ${logfile}.gz"
    else
        echo "✗ Failed to compress $logfile"
    fi
    echo ""
done

echo "Compression complete!"
echo "========================================="
echo "Final directory contents:"
ls -lh logs


## Complete Script (All-in-One)

## How to Use This Script

*1. Save the script:*

bash
nano compress_logs.sh
# Paste the script content
chmod +x compress_logs.sh


*2. Run it:*

bash
./compress_logs.sh


## What Will Happen

1. *Creates 5 log files* (app1.log through app5.log)
1. *Changes timestamps* of first 3 files to yesterday
1. *Finds files* older than 0 days (app1, app2, app3)
1. *Compresses* those files using gzip in a loop
1. *Shows results* - you’ll see .gz files for old logs

## Expected Output


app1.log.gz  ← Compressed (was from yesterday)
app2.log.gz  ← Compressed (was from yesterday)
app3.log.gz  ← Compressed (was from yesterday)
app4.log     ← Not compressed (created today)
app5.log     ← Not compressed (created today)

