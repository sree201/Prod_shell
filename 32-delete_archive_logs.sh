cat 32-delete_archive_logs.sh
#!/bin/bash

R="\e[31m"
G="\e[32m"

Set the directory path where log files are located
log_directory="/var/log/"

Set the threshold age for log files
threshold_days=14

delete old log files
delete_old_logs() {
find "$log_directory" -type f -name ".2023" -mtime +"$threshold_days" -exec rm {} ;
echo "Old log files $R deleted."
}

Function to archive old log files
archive_old_logs() {
archive_name="log_archive_$(date +'%Y%m%d').tar.gz"
find "$log_directory" -type f -name ".2023" -mtime +"$threshold_days" -exec tar -czvf "$archive_name" {} +
echo "Old log files $G archived to $archive_name."
}