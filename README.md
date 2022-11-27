
# mysql-backup
with this script you can easy backup your MYSQL Database

1. download the Bash-Script
2. Edit and change the file with login data to yout MYSQL Server
3. Upload it to the Webserver
4. Test
5. Make a CronJob

2. Edit the File



    

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


4. login with putty or a other ssh client
   test the script (e.g the script is in the folder ~/scripts/
   

       cd scripts
       ./mysql-backup.sh

   
5. Make a CronJob

    `0 0 * * * ~/scripts/mysql_backup.sh` # take a backup every midnight
    `0 2 * * * ~/scripts/mysql_backup.s` # take a backup every midnight

# DONE

