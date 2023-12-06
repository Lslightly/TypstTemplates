#!/bin/bash

# Check if the target directory parameter is provided
if [ -z "$1" ]; then
    echo "Please provide the target directory parameter"
    exit 1
fi

targetDirectory="$1"

# Get the current script directory
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symbolic link for the entire script directory
ln -s "$scriptPath" "$targetDirectory/TypstTemplates"

if [ $? -eq 0 ]; then
    echo "Symbolic link to TypstTemplates folder created successfully"
    exit 0
else
    echo "Failed to create symbolic link to TypstTemplates folder"
    exit 1
fi
