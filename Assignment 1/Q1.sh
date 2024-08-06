#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
  echo "Error: $DIR is not a valid directory."
  exit 1
fi

# Find all files in the directory and subdirectories, calculate their lengths, and find the maximum length
max_length=$(find "$DIR" -type f -exec wc -c {} + | awk '{if ($1 > max) max = $1} END {print max}')

echo "The maximum length of any file in the directory hierarchy is: $max_length"
