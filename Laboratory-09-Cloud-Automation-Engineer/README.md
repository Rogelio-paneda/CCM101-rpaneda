# Mission 9: The Cloud Automation Engineer

## Mission Overview
As a Cloud Automation and DevOps team member at CloudNova Technologies, the objective was to eliminate human error regarding routine backups. Manual systems administration is prone to error and scales poorly. This lab focused on transitioning from manual execution to automated scheduling using Bash scripting and cron jobs to ensure critical customer data is securely backed up without human intervention.

## Objectives
* Understand the fundamental syntax of a Bash shell script, including variables and basic commands.
* Use a command-line text editor (nano) to write and save executable scripts.
* Modify Linux file permissions using the `chmod` command.
* Understand task scheduling and configure the Linux Cron scheduler.
* Document automation code and Cron job configurations using Markdown.

## Commands Executed
* `mkdir app-data`
* `echo "This is critical client data." > app-data/data.txt`
* `nano backup.sh`
* `chmod +x backup.sh`
* `./backup.sh`
* `ls -l backups/`
* `sudo apt update && sudo apt install cron -y`
* `sudo service cron start`
* `crontab -l`
* `env EDITOR=nano crontab -e`

## Skills Learned
* Shell Scripting (Bash)
* File permission management in Linux
* Task automation using Cron jobs
* Command-line file archiving (`tar`)