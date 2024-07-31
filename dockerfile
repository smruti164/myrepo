# Use the official Nginx image as a base
FROM nginx:latest

# Copy the custom index.html file to the Nginx html directory
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
