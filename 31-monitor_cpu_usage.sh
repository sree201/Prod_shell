#!/bin/bash

# Process name to monitor
process_name="your_process_name_here"

# CPU usage threshold (in percentage)
threshold=50

# Get PID of the process
pid=$(ps aux | grep "$process_name" | grep -v grep | awk '{print $2}')

if [ -z "$pid" ]; then
  echo "Process not found."
else
  # Get current CPU usage of the process
  cpu_usage=$(ps -p "$pid" -o %cpu | awk 'NR>1' | awk -F. '{print $1}') # Extract integer part

  echo "Current CPU usage of $process_name (PID $pid): $cpu_usage%"

  # Compare CPU usage with threshold
  if [ "$cpu_usage" -gt "$threshold" ]; then
    echo "CPU usage exceeds threshold. Terminating process..."
    # Terminate the process
    kill "$pid"
    echo "Process terminated."
  else
    echo "CPU usage within threshold."
  fi
fi

#!/bin/bash

# Set the process name and CPU usage threshold
process_name="my_process"
cpu_threshold=90  # Set your desired threshold percentage

# Get the current CPU usage for the specified process
current_cpu_usage=$(top -bn1 | grep "$process_name" | awk '{print $2}')

# Check if CPU usage exceeds the threshold
if (( $(echo "$current_cpu_usage > $cpu_threshold" | bc -l) )); then
    echo "CPU usage of $process_name is above the threshold ($cpu_threshold%). Terminating..."
    # You can replace the following line with the actual command to terminate the process
    # Example: killall "$process_name"
else
    echo "CPU usage of $process_name is within the threshold."
fi
