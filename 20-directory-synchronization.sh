#!/bin/bash

source_dir="/path/to/source"

destination_dir="/path/to/destination"

rsync -avz "$source_dir" "$destination_dir"

echo "Directories synchronized successfully."