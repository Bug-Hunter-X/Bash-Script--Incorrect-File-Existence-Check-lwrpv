# Bash Script Bug: Incorrect File Existence Check

This repository demonstrates a common error in bash scripting when checking for file existence, especially when dealing with filenames containing spaces or special characters. The script attempts to process a list of files, but its file existence check is flawed, leading to unexpected behavior or errors.

## Bug Description
The primary bug lies in how the script checks if a file exists using `[ -f $i ]`. This is problematic when filenames include spaces or special characters because the loop does not properly handle word splitting and globbing.  This will cause unexpected results.

## Solution
The solution involves using double quotes around the filename variable to protect spaces or special characters and the use of safer alternatives like using the `[[ ]]` conditional expression.