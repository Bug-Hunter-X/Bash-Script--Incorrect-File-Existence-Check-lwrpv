#!/bin/bash

# This script attempts to process a list of files,
# but it contains a subtle error that can lead to unexpected behavior.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  # The error is here: Incorrect way to check file existence
  if [ -f $i ]; then
    echo "Processing: $i"
    # Process the file (e.g., using cat)
    cat "$i"
  else
    echo "Error: File '$i' not found"
  fi

done