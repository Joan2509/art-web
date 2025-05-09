# Ascii-Art-Web Dockerize

## Description

Ascii-art-web is a web application that provides a graphical user interface (GUI) for creating ASCII art banners. The application allows users to input text and select a banner style (shadow, standard, or thinkertoy) to generate an ASCII art banner.


## Installation and Setup

To install, clone the repository locally using Git:
```script
git clone https://learn.zone01kisumu.ke/git/jwambugu/ascii-art-web-dockerize
```

Alternatively, download the project directly from Gitea and access it through your file manager.

## Using Docker

To build and run the application using Docker:


1. Build the Docker image:
```go
docker build -t ascii-art-web:latest .
```

2. Run the Docker container:
```go
docker run -d -p 8000:8000 --name dockerize it  ascii-art-web:latest
```

3. Open a web browser at the provided port:  [http://localhost:8000](http://localhost:8000)

## Implementation

The application is implemented in Go programming language. It creates an HTTP server that handles GET and POST requests. HTML templates are used to display data to the user.

### Algorithm

1. User sends a GET request to the root URL (/) to retrieve the main page.
2. Server responds with an HTML template including a text input, radio buttons for banner styles, and a submit button.
3. When the form is submitted, the client sends a POST request to /ascii-art endpoint with text and banner style as form data.
4. Server processes the request, generates ASCII art banner using the selected style, and responds with an HTML template displaying the banner.

## HTTP Status Codes

- `200: OK`: Returned when request is successful.
- `400: Bad Request`: Returned when the server cannot process the request due to a client error.
- `404: Not Found`: Returned when the server can not find the requested resource.
- `405: Method Allowed`: Returned when the HTTP method used is not supported for the specified resource.
- `500: Internal Server Error`: Generic error message returned when an issue is encountered on the server side. 

## Notes

- Application uses Go templates for displaying data to the user.
- Application uses form data to send text and banner style to the server.
- Application uses HTTP server to handle GET and POST requests.
- The application can also be run by running the executable script.sh
- Unused objects are catered for using garbage collection by stopping and removing unused containers.

## Authors

- [Cherrypick14](https://github.com/Cherrypick14)
- [Raymond](https://github.com/anxielray)
- [Joan Wambugu](https://github.com/Joan2509)

