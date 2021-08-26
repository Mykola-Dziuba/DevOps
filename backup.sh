#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PATH

#Create backup tar file 
title='save-var-'`date +\%d-\%m-\%Y`'.tar.gz'
tar -czvf $title /var/log/*.gz /var/mail

#Upload the archive to Google Drive via rclone
rclone copy $title remote:backup 

#Delete the archive
rm $title

#Checking and test
#Download file from Google Drive via rclone
rclone sync remote:backup /home/DevOps/backup

#Create raport
tar -ztvf /home/DevOps/backup/$title > /home/DevOps/backup/raport-`date +\%d-\%m-\%Y`  

#Add backup to github
git -C /home/DevOps add .
git -C /home/DevOps commit -m "backup-`date +\%d-\%m-\%Y`"
git -C /home/DevOps push origin

