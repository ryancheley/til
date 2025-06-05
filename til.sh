#!/bin/bash

# Script to create a markdown file in a specified directory
# Usage: ./create_markdown.sh <folder_name> <markdown_title>

set -euo pipefail  # Exit on error, undefined vars, and pipe failures

# Function to display usage information
usage() {
    echo "Usage: $0 <folder_name> <markdown_title>"
    echo ""
    echo "  folder_name:     Directory to create/use for the markdown file"
    echo "  markdown_title:  Title for the markdown file (spaces will be replaced with hyphens)"
    echo ""
    echo "Example: $0 docs 'Hello World!'"
    echo "  Creates: docs/Hello-World!.md with content '# Hello World!'"
    exit 1
}

# Check if exactly 2 parameters are provided
if [ $# -ne 2 ]; then
    echo "Error: Exactly 2 parameters required."
    usage
fi

# Assign parameters to variables
folder_name="$1"
markdown_title="$2"

# Validate folder name is not empty
if [ -z "$folder_name" ]; then
    echo "Error: Folder name cannot be empty."
    exit 1
fi

# Validate markdown title is not empty
if [ -z "$markdown_title" ]; then
    echo "Error: Markdown title cannot be empty."
    exit 1
fi

# Check for potentially problematic characters in folder name
if [[ "$folder_name" =~ [[:space:]] ]]; then
    echo "Warning: Folder name contains spaces. This may cause issues."
fi

# Create the folder if it doesn't exist
if [ ! -d "$folder_name" ]; then
    echo "Creating directory: $folder_name"
    if ! mkdir -p "$folder_name"; then
        echo "Error: Failed to create directory '$folder_name'"
        exit 1
    fi
else
    echo "Directory '$folder_name' already exists."
fi

# Replace spaces with hyphens in the title for the filename
filename=$(echo "$markdown_title" | sed 's/ /-/g')

# Construct the full file path
file_path="$folder_name/${filename}.md"

# Check if file already exists
if [ -f "$file_path" ]; then
    echo "Warning: File '$file_path' already exists."
    read -p "Do you want to overwrite it? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Operation cancelled."
        exit 0
    fi
fi

# Create the markdown content (title with # prefix)
content="# $markdown_title"

# Write the content to the file
if echo "$content" > "$file_path"; then
    echo "Successfully created: $file_path"
    echo "Content: $content"
else
    echo "Error: Failed to write to file '$file_path'"
    exit 1
fi