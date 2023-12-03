#!/bin/bash

################################################################################
# Symbolic Link Creation Script
#
# This script creates symbolic links for 'templates' and 'fonts' folders from
# the current script's directory to corresponding folders in the target directory.
#
# Usage:
#   ./script.sh <target_directory>
#
# Parameters:
#   <target_directory>  Required target directory parameter.
#
# Example:
#   ./script.sh /path/to/target_directory
#
################################################################################

# Check if the target directory parameter is provided
if [ -z "$1" ]; then
    echo "Please provide the target directory parameter"
    exit 1
fi

targetDirectory="$1"

# Get the current script directory
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define an array of folders to link
folders=("templates" "fonts")

# Create symbolic links for folders in the array
for folder in "${folders[@]}"; do
    ln -s "$scriptPath/$folder" "$targetDirectory/$folder"
    if [ $? -ne 0 ]; then
        echo "Failed to create symbolic link for folder $folder"
        exit 1
    fi
done

echo "Symbolic links created successfully"
exit 0
