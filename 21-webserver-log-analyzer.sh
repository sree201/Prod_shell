#!/bin/bash

log_file="/var/log/apache2/access.log"

awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr

echo "Web server log analyzed."