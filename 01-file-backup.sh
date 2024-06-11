#!/bin/bash

backup_dir="/tmp/backup-app-logs"

source_dir="/tmp/app-logs"

tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$source_dir"
