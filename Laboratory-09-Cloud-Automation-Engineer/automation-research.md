# Automation Research

**Bash Script:** 
A Bash script is a plain text file containing a sequence of commands that the Linux terminal executes automatically. The `#!/bin/bash` line at the very top (the shebang) explicitly tells the operating system's kernel to use the Bash interpreter to run the subsequent code in the file[cite: 2].

**Variables:** 
Programmers use variables like `$BACKUP_DIR` as reusable placeholders for data[cite: 2]. Instead of typing a long, complicated folder path repeatedly, a variable allows you to define the path once; if the path ever needs to change, you only have to update it in one single place, which prevents typos and makes the code scalable.

**Cron Job:** 
A cron job is a time-based scheduling utility in Linux that automatically executes commands or scripts at specific intervals[cite: 2]. It is essential for cloud operations because it removes human error and allows routine maintenance tasks—like nightly backups or log clearing—to happen entirely autonomously without manual intervention[cite: 2].