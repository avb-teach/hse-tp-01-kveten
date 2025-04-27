#!/bin/bash

input="$1"
output="$2"

find "$input" -type f | while read file; do
    path = $(basename "$file")
    cp "$file" "$output/$path"
done