#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied"
    echo "Example: ./dns-lookup.sh ip.txt OR ./dns-lookup.sh domain.txt"
    echo "Note: Domain List should not contain http/https"
    exit 1
fi
while IFS= read -r line || [[ -n "$line" ]]; do
    host $line
done < "$1"
