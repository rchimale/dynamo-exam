## Exercise 4 - Backup & Restore

# To backup run the script with the following info:
./backup-mysql.sh {user} {passwrd} {host} {db_name}

* Backups will be stored on your home folder in the /_backup/mysql folder.
* Backups older than 30 days will be deleted.

# To restore a backup run the script with teh following info:
./restore-mysql.sh {user} {passwrd} {host} {db_name} {YYYY-MM-DD}
