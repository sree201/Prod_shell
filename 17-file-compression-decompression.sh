#!/bin/bash

file_to_compress="/path/to/file.txt"

gzip "$file_to_compress"

echo "File compressed: $file_to_compress.gz"