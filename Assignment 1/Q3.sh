#!/bin/bash

# Check if two filenames are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 file1 file2"
  exit 1
fi

# Check if both files exist
if [ ! -e "$1" ] || [ ! -e "$2" ]; then
  echo "One or both files do not exist"
  exit 1
fi

# Get the file permissions
perm1=$(stat -c %A "$1")
perm2=$(stat -c %A "$2")

# Compare the permissions
if [ "$perm1" = "$perm2" ]; then
  echo "Common permission: $perm1"
else
  echo "$1: $perm1"
  echo "$2: $perm2"
fi
