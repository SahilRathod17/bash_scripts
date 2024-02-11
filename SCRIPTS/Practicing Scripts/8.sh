#!/bin/bash

# Display a list of files in the current directory with read, write, and execute permissions.

echo "------------------------------------------------------------"
echo "Files with read, write, and execute permissions:"
echo "------------------------------------------------------------"

for File in *; do
    if [ -r "$File" ] && [ -w "$File" ] && [ -x "$File" ]; then
        echo "$File"
    fi
done
echo
echo "-------------------------------------------------------------"