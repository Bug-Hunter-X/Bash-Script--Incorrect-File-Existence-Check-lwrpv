#!/bin/bash

# This script corrects the file existence check to handle filenames with spaces and special characters.

files=("file1.txt" "file2.txt" "file 3.txt")

for i in "${files[@]}"; do
  # Corrected way to check file existence
  if [[ -f "$i" ]]; then
    echo "Processing: $i"
    # Process the file (e.g., using cat)
    cat "$i"
  else
    echo "Error: File '$i' not found"
  fi
done