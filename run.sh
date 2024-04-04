#!/bin/sh

# Function for graceful shutdown
cleanup() {
    echo "Received SIGTERM, cleaning up..."
    # Add any necessary cleanup actions here (stop services, close files, etc.)
    exit 0
}

# Trap the SIGTERM signal
trap cleanup SIGTERM

# Main loop to produce output
counter=0

# Main loop to produce output
while true; do
    echo "Worker Processing... $counter"
    let counter++  # Increment the counter
    sleep 1  # Simulate some work
done