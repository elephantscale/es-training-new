#!/bin/bash

# Set the directory containing the files
DIR="."
md2docx="/home/mark/projects/ES/utils/presentations/md2docx.sh"
# Loop through each file in the directory with extension *.AI
for file in "$DIR"/*AI*; do
  # Check if the file exists to prevent errors in case of no matches
  if [[ -f "$file" ]]; then
    echo "Processing: $file"
    $md2docx "$file"
  fi
done