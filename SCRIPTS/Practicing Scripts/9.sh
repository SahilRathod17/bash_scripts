#!/bin/bash

# This script deletes all the files in the current directory which are 0 bytes in length.

echo "--------------------------------------------------------------"
echo "Deleting files with 0 bytes length..."
echo "--------------------------------------------------------------"

# Use 'find' command to locate and delete files with 0 bytes length
find . -type f -size 0 -delete

echo "Files deleted."
echo
echo "---------------------------------------------------------------"