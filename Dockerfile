# Use the mhart/alpine-node image as the base
FROM mhart/alpine-node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the static files (HTML, CSS, etc.) to the working directory
COPY . .

# Install a simple HTTP server to serve static files
RUN npm install -g http-server

# Expose port 80 for the HTTP server
EXPOSE 80

# Command to run the HTTP server
CMD ["http-server", ".", "-p", "80"]
