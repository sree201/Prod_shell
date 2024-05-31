#!/bin/bash

service_name="nodejs"

sudo systemctl restart "$service_name"

echo "Service $service_name restarted."