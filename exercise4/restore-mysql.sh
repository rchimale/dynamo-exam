#!/bin/bash

# Database credentials
user="$1"
password="$2"
host="$3"
db_name="$4"
date="$5"

# Other options
backup_path="~/_backup/mysql"

# Restore database backup
mysql --user=$user --password=$password $db_name < $backup_path/$db_name-$date.sql