#!/bin/bash

# check if a directory is provided
if [ -z "$1" ]; then
	echo "Please provide a directory to organize."
	exit 1
fi

TARGET_DIR="$1"

# create directories for file types 
mkdir -p "$TARGET_DIR/Images"
mkdir -p "$TARGET_DIR/Documents"
mkdir -p "$TARGET_DIR/Others"

#move files based on extensions
mv "$TARGET_DIR"/*.jpg "$TARGET_DIR/Images/" 2>/dev/null
mv "$TARGET_DIR"/*.png "$TARGET_DIR/Images/" 2>/dev/null
mv "$TARGET_DIR"/*.pdf "$TARGET_DIR/Documents/" 2>/dev/null
mv "$TARGET_DIR"/*.docx "$TARGET_DIR/Documents/" 2>/dev/null
mv "$TARGET_DIR"/* "$TARGET_DIR/Others/" 2>/dev/null
