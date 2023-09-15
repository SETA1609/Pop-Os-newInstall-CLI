#!/bin/bash

# Specify the directory path where you want to apply chmod +x
directory="."

# Check if the directory exists
if [ -d "$directory" ]; then
  for file in "$directory"/*; do
    if [ -f "$file" ]; then
      chmod +rx "$file"
      echo "Added execute permission to $file"
    fi
  done
else
  echo "Directory not found: $directory"
fi
