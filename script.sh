#!/bin/bash

# File containing package names
PACKAGE_FILE="packages.txt"

# Check if the file exists
if [ ! -f "$PACKAGE_FILE" ]; then
    echo "Package file not found: $PACKAGE_FILE"
    exit 1
fi

# Install packages
while IFS= read -r package; do
    sudo apt install -y "$package"
done < "$PACKAGE_FILE"
