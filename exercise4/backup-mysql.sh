#!/bin/bash

# Database credentials
user="$1"
password="$2"
host="$3"
db_name="$4"

# Other options
backup_path="~/_backup/mysql"
date=$(date +"%Y-%m-%d")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
find $backup_path/* -mtime +30 -exec rm {} \;