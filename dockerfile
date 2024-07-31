# Use the official Red Hat Universal Base Image as the base image
FROM registry.access.redhat.com/ubi8/ubi

# Install Apache HTTP Server (httpd)
RUN yum -y install httpd && yum clean all

# Set the working directory
WORKDIR /var/www/html

# Copy the index.html file
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]

