#!/bin/bash
echo "Starting Image Web Optimizer..."

# Calculate and print the size of photos in a directory
calculate_size() {
    local directory="$1"
    local total_size=$(du -sh "$directory" | awk '{print $1}')
    echo "$total_size"
}

echo "Total photo size before compression:"
calculate_size "/in"

java -jar /app/target/image-web-optimizer-0.0.2-SNAPSHOT.jar /in /out

echo "Total photo size after compression:"
calculate_size "/out"