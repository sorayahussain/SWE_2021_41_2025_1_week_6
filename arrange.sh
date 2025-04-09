#!/bin/bash

SOURCE="./files"

for file in "$SOURCE"/*.txt; do
    [ -e "$file" ] || break
    filename=$(basename "$file")
    first_letter=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')
    if [[ "$first_letter" =~ [a-z] ]]; then
        target_dir="$first_letter"
        mv "$file" "$target_dir/"
    fi
done
