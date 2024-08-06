#!/bin/bash

# Check if at least one filename is provided
if [ "$#" -eq 0 ]; then
  echo "Usage: $0 filename1 [filename2 ...]"
  exit 1
fi

# Convert each file to uppercase
for file in "$@"; do
  if [ -f "$file" ]; then
    tr '[:lower:]' '[:upper:]' < "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
    echo "$file converted to uppercase"
  else
    echo "$file does not exist"
  fi
done
