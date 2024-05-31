#!/bin/bash

database_name="mysql"

days_to_keep=7

find /home/ec2-user/shell-expense/backend.service /etc/systemd/system/backend.service -name "$database_name*.sql" -mtime +"$days_to_keep" -exec rm {} \;

echo "Old database backups cleaned up."