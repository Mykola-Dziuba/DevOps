#!/bin/bash
PATH=$PATH:$HOME/bin:/usr/sbin:/usr/bin:/script
export PATH

title='save-var-'`date +\%d-\%m-\%Y`'.tar.gz'
tar -czvf $title /var/log/*.gz /var/mail

#Use gupload to upload the archive to my Google Drive
rclone copy $title remote:backup 

#Delete the archive
rm $title

#Print end status message
#echo "Backup finished"

#Checking and test
#Download file from Google Drive 
rclone sync remote:backup /home/DevOps/backup

#Print end status message
#echo "Unbackup finished"
#date

#Add to github
git -C /home/DevOps add .
git -C /home/DevOps commit -m "backup-`date +\%d-\%m-\%Y`"
git -C /home/DevOps push origin

#Create raport
tar -ztvf /home/DevOps/backup/$title > /home/DevOps/backup/raport-`date +\%d-\%m-\%Y`  
