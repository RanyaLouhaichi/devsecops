#!/bin/bash

# File containing list of websites
FILE="websites.txt"

echo "Checking website statuses..."

# Loop through each line in the file
while IFS= read -r website; do
    if ping -c 1 "$website" &> /dev/null; then
        echo "$website is UP"
    else
        echo "$website is DOWN"
    fi
done < "$FILE"
