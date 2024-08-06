#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

PATH_NAME=$1

# Use the mkdir command with the -p option to create the full directory tree
mkdir -p "$PATH_NAME"

if [ $? -eq 0 ]; then
  echo "Directories created successfully: $PATH_NAME"
else
  echo "Failed to create directories: $PATH_NAME"
fi
