#!/bin/bash

echo "=== Weather Fetcher ==="
echo ""
count=0
while true; do
city=""
while [ -z "$city" ]; do
    read -p "Enter city name: " city

# checks if city variable is empty, if not the loop ends
    if [ -z "$city" ]; then
        echo "Error: You must enter a city name."
    fi
done

# Fetch weather details from the API
response=$(curl -s "https://wttr.in/$city?format=j1")

# checking if we got any data
if [ -z "$response" ]; then
	echo "Error: No data received"
	exit 1
fi

# Extract fields
temp_C=$(echo "$response" | grep -o '"temp_C": *"[^"]*"' | head -n 1 | cut -d'"' -f4)
humidity=$(echo "$response" | grep -o '"humidity": *"[^"]*"' | head -n 1 | cut -d'"' -f4)
weather=$(echo "$response" | tr -d '\n' | grep -o '"weatherDesc": *\[ *{ *"value": *"[^"]*"' | head -n 1 | cut -d'"' -f6)
windSpeed=$(echo "$response" | grep -o '"windspeedKmph": *"[^"]*"' | head -n 1 | cut -d'"' -f4)

# display nicely
echo "=== Weather in $city ==="
echo "City: $city"
echo "Current temp: $temp_C""°C"
echo "Current humidity: $humidity""%"
echo "Current weather state: $weather"
echo "Current windspeed: $windSpeed""kmph"

echo "====================================="
((count++))
if [ $count -eq 3 ]; then
	echo "Maximum number of cities reached."
	break 
fi
echo ""
read -p "Check another city (y/n)?: " answer

if [[ "$answer" != "y" && "$answer" != "Y" ]]; then
	echo "Alright, check back later!"
	break
fi

echo ""

done
