#!/bin/bash

output_file="system_health_check.txt"

echo "System Health Check:" > "$output_file"

echo "---------------------" >> "$output_file"

echo "Uptime: $(uptime)" >> "$output_file"

echo "Load Average: $(cat /proc/loadavg)" >> "$output_file"

echo "Memory Usage: $(free -m)" >> "$output_file"

echo "System health check results saved to $output_file."