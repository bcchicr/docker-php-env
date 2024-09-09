ARG PHP_VERSION=latest
ARG COMPOSER_VERSION=latest
FROM composer:${COMPOSER_VERSION} AS composer-stage

FROM php:${PHP_VERSION}-fpm AS base
ARG user
ARG uid
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
    libicu-dev \
    locales \
    zip \
    unzip \
    jpegoptim optipng pngquant gifsicle
RUN docker-php-ext-install pdo_pgsql pdo_mysql sockets mbstring zip exif pcntl bcmath intl
RUN pecl install redis && \
      docker-php-ext-enable redis
COPY --from=composer-stage /usr/bin/composer /usr/bin/composer
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

FROM base AS base-app
# COPY ./php/ini/conf.d/ /usr/local/etc/php/conf.d/
WORKDIR /var/www/html

EXPOSE 9000

FROM base-app AS development-app
COPY ./php/ini/development.php.ini /usr/local/etc/php/php.ini
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
USER $user

FROM base-app AS final-app
# COPY ./php/ini/prod.php.ini /usr/local/etc/php/php.ini
USER www-data



