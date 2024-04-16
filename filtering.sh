#!/bin/bash

dest="Clean"

# Ensure the destination directory exists
mkdir -p "$dest"

# Find and process each .ab1 file
find . -name "*.ab1" | while read -r file; do
    base=$(basename "$file")
    # Extract the necessary part of the filename
    newname=$(echo "$base" | sed -E "s/^(.*[RF]).*\.ab1$/\1.ab1/")
    finalname="$newname"
    count=1
    
    # Check if the file exists in the destination and increment the count to generate a new filename
    while [ -e "$dest/$finalname" ]; do
        ((count++))
        finalname="${newname%.ab1}_${count}.ab1"
    done

    # Copy the file to the destination with the new name
    cp "$file" "$dest/$finalname"
done

