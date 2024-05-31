#!/bin/bash

database_name="your_database"

days_to_keep=7

find /path/to/database/backups -name "$database_name*.sql" -mtime +"$days_to_keep" -exec rm {} \;

echo "Old database backups cleaned up."