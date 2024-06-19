# Use an official PHP runtime as a parent image
FROM php:8.0-apache

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html/

# Set permissions for the web server to access the files
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]