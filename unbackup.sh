#!/bin/bash

#Download file from Google Drive
rclone sync remote:backup /home/DevOps/backup
 
#Print end status message
echo
echo "Unbackup finished"
date



