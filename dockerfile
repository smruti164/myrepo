# Use the Universal Base Image (UBI) from Red Hat
FROM registry.access.redhat.com/ubi8/ubi

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
