#!/bin/bash

service_name="backend.service"

sudo systemctl restart "$service_name"

echo "Service $service_name restarted."