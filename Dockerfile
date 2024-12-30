# Use the latest alpine-node image as the base
FROM mhart/alpine-node

# Copy the HTML and CSS files to the NGINX HTML directory
COPY . /app

CMD node /app/app.js

# Expose port 80 for the web server
EXPOSE 80