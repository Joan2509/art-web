# Use the official Golang image as a base image
FROM golang:1.22.5

# Metadata 
LABEL maintainer=" wjoanmumbi@gmail.com"
LABEL description="Ascii-art-web application container"
LABEL version="1.0"
LABEL license="MIT"

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Set the entrypoint command to run the web server
CMD ["go","run","."]
