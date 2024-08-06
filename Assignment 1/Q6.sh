#!/bin/bash

# Prompt for a file name
read -p "Enter a file name: " filename

# Check if the file exists
if [ ! -e "$filename" ]; then
  echo "File does not exist"
  exit 1
fi

# Output file properties
echo "File properties for $filename:"
stat "$filename"
