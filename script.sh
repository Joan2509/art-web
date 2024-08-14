#!/bin/bash

# build the container
docker build -t ascii-art-web:art-web .

# Run the container application

docker run -it --name myapp-container -p 8080:8080 myapp:latest



