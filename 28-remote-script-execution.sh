#!/bin/bash

remote_server="user@remote-server"

remote_script="/path/to/remote/script.sh"

ssh "$remote_server" "bash -s" < "$remote_script"

echo "Remote script executed."