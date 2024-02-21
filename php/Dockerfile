FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    curl \
    git \
    libpq-dev \
    libonig-dev \
    zip \
    unzip
RUN docker-php-ext-install pdo_pgsql mbstring

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/

CMD ["php-fpm"]

EXPOSE 9000
