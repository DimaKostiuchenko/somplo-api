FROM php:8.4-fpm
# Just the bare minimum to make MySQL work with Laravel
RUN docker-php-ext-install pdo_mysql
# Get Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www
