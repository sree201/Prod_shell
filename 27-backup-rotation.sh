#!/bin/bash
backup_dir="/path/to/backups"
max_backups=5
while [ $(ls -1 "$backup_dir" | wc -l) -gt "$max_backups" ]; do
oldest_backup=$(ls -1t "$backup_dir" | tail -n 1)
rm -r "$backup_dir/$oldest_backup"
done
echo "Backup rotation completed."