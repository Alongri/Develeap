#!/bin/sh

# Get the first argument as PORT, or default to 8080
if [ -z "$1" ]; then
    port=8080
else
    port="$1"
fi

export PORT="$port"
# Execute the server
npm start
