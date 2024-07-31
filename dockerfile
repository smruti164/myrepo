FROM localhost:5000/my-local-base-image

# Install Apache HTTP Server (httpd)
RUN yum -y install httpd && \
    yum clean all

# Set the working directory
WORKDIR /var/www/html

# Copy the index.html file to /var/www/html
COPY index.html /var/www/html/index.html

# Expose port 80 to access the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
