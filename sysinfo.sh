#!/bin/bash

echo "=== RESOURCE INFO ==="


echo "Date & Time: $(date)"
echo "Logged in user: $(id -u -n)"
echo "Current Directory: $(pwd)"
echo "Home Directory: $HOME"

count=$(ls -1 | wc -l)
echo "Number of files in working directory: $count"
echo "===================================="
