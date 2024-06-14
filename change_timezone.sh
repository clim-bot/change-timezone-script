#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 {Los_Angeles|New_York}"
    exit 1
}

# Check if the user provided an argument
if [ $# -ne 1 ]; then
    usage
fi

# Set the time zone based on the argument provided
case $1 in
    Los_Angeles)
        sudo systemsetup -settimezone "America/Los_Angeles"
        ;;
    New_York)
        sudo systemsetup -settimezone "America/New_York"
        ;;
    *)
        usage
        ;;
esac

# Confirm the change
echo "Time zone has been changed to $1"
