#!/bin/bash

# Build the Docker image
docker build -t ascii-art-web:latest .

#Stop all unused containers
docker stop $(docker ps -q)

# Remove any stopped containers
docker container prune -f

# Remove any dangling images (images not associated with a container)
docker image prune -f

# Run the container 
echo "Running the Docker container at http://localhost:8000"
docker run -d -p 8000:8000 --name dockerize-it ascii-art-web:latest
