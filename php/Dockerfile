ARG PHP_VERSION
ARG COMPOSER_VERSION

FROM composer:${COMPOSER_VERSION} as composer

FROM php:${PHP_VERSION}-fpm as base
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libpq-dev \
    libonig-dev \
    libzip-dev \
    locales \
    zip \
    unzip \
    jpegoptim optipng pngquant gifsicle
RUN docker-php-ext-install pdo_pgsql mbstring zip exif pcntl
RUN pecl install redis && \
      docker-php-ext-enable redis
COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY ./php/ini/conf.d/ /usr/local/etc/php/conf.d/
COPY ./app/composer.* /var/www/html
WORKDIR /var/www/html
EXPOSE 9000

FROM base as development
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
COPY ./php/ini/dev.php.ini /usr/local/etc/php/php.ini
CMD bash -c "composer install --no-interaction && php-fpm"


FROM base as final
COPY ./php/ini/prod.php.ini /usr/local/etc/php/php.ini
USER www-data
CMD bash -c "composer install --optimize-autoloader --no-dev --no-interaction && php-fpm"




