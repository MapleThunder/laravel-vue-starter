# Use PHP 8.3 FPM
FROM php:8.3-fpm

# Install system dependencies & PostgreSQL dev headers
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    libpq-dev \
    libzip-dev \
    && docker-php-ext-install pdo_pgsql zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Copy rest of the app
COPY . .

# Copy & install PHP deps
COPY composer.json composer.lock ./
RUN composer install --no-dev --optimize-autoloader

# ensure artisan is executable and owned by www‐data
# RUN chown www-data:www-data /var/www/html/artisan \
#     && chmod +x /var/www/html/artisan

# Ensure storage is writable
RUN chown -R www-data:www-data storage bootstrap/cache

# Expose FPM port
EXPOSE 9000

# Launch PHP-FPM
CMD ["php-fpm"]
