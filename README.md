
# mysql-backup
with this script you can easy backup your MYSQL Database

1. download the Bash-Script
2. Edit and change the file with login data to yout MYSQL Server
3. Upload it to the Webserver
4. Test
5. Make a CronJob




**Edit the File**
 
> Example
> 
> HOSTNAME= Your Hostname from the Mysql-server      
> `HOSTNAME=server.mysql.db.internal` 
> 
> DATABASE_NAME= Databse Name                          
>   `DATABASE_NAME=nextcloud` 
>   
>   USER_NAME= Username from your mysql login          
>    `USER_NAME=cloud` 
>    
>    PASSWORD= Password for you Login                  
>     `PASSWORD=Nhts2kr4xcH`
> 
> BACKUP_DIR= Where du u want you backup's
> ~/BACKUP/Database/
> 
> MAX_NUMBER_OF_FILES=  How much Backups you wanna have if to much backups the script will  delete the oldest      
> `MAX_NUMBER_OF_FILES=5`
>  

**test the script**\
 login with putty or a other ssh client\
 make it runnable with chmod\
 test the script (e.g the script is in the folder ~/scripts/
  
   

       cd scripts
       chmod +x backup-nextcloud.sh      
       ./mysql-backup.sh

   
**Make a CronJob**

    `0 0 * * * ~/scripts/mysql_backup.sh` # take a backup every midnight
    `0 2 * * * ~/scripts/mysql_backup.sh` # take a backup every day 02:00 o clock
    `0 0 * * 1 ~/scripts/mysql_backup.sh` # Every Monday

# DONE

