FROM php:8.4-fpm

# Install system dependencies (CLI tools and Dev Libraries)
RUN apt-get update && apt-get install -y \
    libzip-dev \
    libxml2-dev \
    unzip \
    && docker-php-ext-install \
    pdo_mysql \
    zip \
    xml \
    dom \
    simplexml \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
