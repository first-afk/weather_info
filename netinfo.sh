#!/bin/bash

echo "=== RESOURCE INFO ==="

echo "Hostname: $HOSTNAME"


my_ip=$(curl -s ifconfig.me)

echo "Google IP: $my_ip"

#Google IP as the target
target="8.8.8.8"

# &> /dev/null silences the output (hides the text)
if ping -n 1 "$target" &> /dev/null; then
    echo "Connection Status: Connected"
else
    echo "Connection Status: Offline"
fi
