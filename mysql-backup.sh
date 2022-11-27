#!/bin/bash


HOSTNAME=server.mysql.db.internal
DATABASE_NAME=nextcloud
USER_NAME=cloud
PASSWORD=youPassword

# Importend slash "/" at the end
BACKUP_DIR=~/BACKUP/Database/
MAX_NUMBER_OF_FILES=5




# -------------------------------
# Change nothing after this line
# -------------------------------

#Format Date and Time
DATE=`date +%y-%m-%d`
TIME=`date +%H-%M-%S`

# The filename contains the Database Name, Date(YY-MM-DD) and Time(H-M-S)
BACKUP_FILE_NAME=${DATABASE_NAME}_${DATE}_${TIME}.sql
DEST=${BACKUP_DIR}${DATABASE_NAME}/

# The backup dir is: BACKUP_DIR/DATABASE_NAME/
# If the folder exist make a Nothing, if not, make the Folder
if [[ ! -d $DEST ]]; then
	mkdir -p $DEST
fi

# Backup You DATABASE (-n Suppress the CREATE DATABASE statement)
mysqldump --quick -n --host=$HOSTNAME $DATABASE_NAME --user=$USER_NAME --password=$PASSWORD > ${DEST}${BACKUP_FILE_NAME}

# Go to Backup Folder
cd $DEST


# Cheack how much files are in the Folder
NUMBER_OF_FILES=$(ls ${DATABASE_NAME}*.sql | wc -l)


# delete the backupfiles if more files are in the Folder then MAX_NUMBER_OF_FILES
if [ $NUMBER_OF_FILES -gt $MAX_NUMBER_OF_FILES ]
then
	ls -t ${DATABASE_NAME}*.sql | tail --lines=+$(expr $MAX_NUMBER_OF_FILES + 1) | xargs rm
fi

