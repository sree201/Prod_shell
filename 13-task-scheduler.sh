#!/bin/bash

scheduled_task="/path/to/your_script.sh"

schedule_time="0 2 * * *"

echo "$schedule_time $scheduled_task" | crontab -

echo "Task scheduled successfully."