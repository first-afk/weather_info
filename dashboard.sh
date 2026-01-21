#!/bin/bash

while true; do
    clear  # Clears the screen to make the menu look fresh
    echo "=============================="
    echo "   MY DASHBOARD TOOL"
    echo "=============================="
    echo "1. Check Weather"
    echo "2. View System Info"
    echo "3. View Network Info"
    echo "4. Exit"
    echo "=============================="
    
    read -p "Select an option (1-4): " choice

    case $choice in
        1)
            # Run weather script
            echo "Loading Weather..."
            ./weather.sh
            ;;
        2)
            # Run system info script
            echo "Loading System Info..."
            ./sysinfo.sh
            ;;
        3)
            # Run network script
            echo "Loading Network Info..."
            ./netinfo.sh
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    # Pause so the user can see the result before the menu clears again
    echo ""
    read -p "Press Enter to continue..."
done
