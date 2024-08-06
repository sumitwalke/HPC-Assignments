#!/bin/bash

# Function to prompt for a password
prompt_password() {
  read -s -p "Enter password: " password
  echo
  read -s -p "Confirm password: " password_confirm
  echo

  if [ "$password" != "$password_confirm" ]; then
    echo "Passwords do not match"
    exit 1
  fi
}

# Prompt for the password
prompt_password

# Lock the terminal
while true; do
  read -s -p "Enter password to unlock: " input_password
  echo

  if [ "$input_password" = "$password" ]; then
    echo "Terminal unlocked"
    break
  else
    echo "Incorrect password"
  fi
done
