#!/bin/bash

# Check if the file is specified
if [ -z "$1" ]; then
  echo "Usage: $0 filename [start_directory]"
  exit 1
fi

filename=$1
start_dir=${2:-.}

# Find and display all links to the file
find "$start_dir" -type f -name "$filename"
