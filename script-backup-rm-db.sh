#!/bin/sh
dateName=$(date +"%d%m%y")
FILENAME='/home/ec2-user/db_backup_'$dateName'.sql'
mysqldump --routines -u root -p'Marketwiz!2' MARKETWIZ > $FILENAME
dateInPast=$(date -d "$date -7 days" +"%d%m%y")
FILENAMEPAST='/home/ec2-user/db_backup_'$dateInPast'.sql'
rm -rf $FILENAMEPAST
