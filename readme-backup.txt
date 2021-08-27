Hello, here you will find how to restore files from /backup repo. You have three key file repositories from where you can download and then restore files.

1. Local repository the path is "/home/DevOps/backup" and you will find a  backup report that contains a list of all files in the archive.
- the command to unzip "tar" 
2. GitHub repository (https://github.com/Mykola-Dziuba/DevOps/tree/main/backup).- the entire catalog "/home/Devops" tracked by the git, go to this directory and use command "git clone" for downloading files. 
3. Google Drive repository (https://drive.google.com/drive/folders/1pPN-yZbZErYAZ-LTKgh3vybb_gUHBozn?usp=sharing). 
- go to this directory "/home/DevOps/backup" and use command "rclone" for downloading files.

You can also change\configure the script for your tasks, the path to "/home/DevOps/backup.sh", using any file editor for example vim nano and others.
Also, don't forget to change the execution configuration in the "crone" application.
- Command for configuration "crontab -e"

Have a nice day and good luck!
