# Dockerfile
FROM wordpress:6.6.1-php8.1-fpm

# Add custom plugins or themes if needed
COPY plugins /var/www/html/wp-content/plugins/
COPY themes /var/www/html/wp-content/themes/

# Ensure file permissions are set correctly
RUN chown -R www-data:www-data /var/www/html

# Create an .htaccess file if it doesn't exist and set correct permissions
RUN touch /var/www/html/.htaccess && \
    chown www-data:www-data /var/www/html/.htaccess && \
    chmod 644 /var/www/html/.htaccess

RUN mkdir -p /var/www/html/wp-content/uploads && \
    chown -R www-data:www-data /var/www/html/wp-content/uploads && \
    chmod -R 755 /var/www/html/wp-content/uploads

# RUN a2enmod rewrite

# Expose the port WordPress runs on
EXPOSE 80
