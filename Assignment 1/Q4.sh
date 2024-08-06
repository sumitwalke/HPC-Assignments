#!/bin/bash

# Check if arguments are provided
if [ "$#" -eq 0 ]; then
  echo "No login names provided"
  exit 1
fi

# Print the home directories for each login name
for user in "$@"; do
  if id "$user" &>/dev/null; then
    echo "$user: $(eval echo ~$user)"
  else
    echo "$user: No such user"
  fi
done
