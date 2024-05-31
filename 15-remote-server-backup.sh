#!/bin/bash

source_dir="/path/to/source"

remote_server="user@remote-server:/path/to/backup"

rsync -avz "$source_dir" "$remote_server"

echo "Files backed up to remote server."
