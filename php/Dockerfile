ARG PHP_VERSION
ARG COMPOSER_VERSION
FROM composer:${COMPOSER_VERSION} as composer-stage

FROM php:${PHP_VERSION}-fpm as base
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
RUN docker-php-ext-install pdo_pgsql mbstring zip exif pcntl bcmath intl
RUN pecl install redis && \
      docker-php-ext-enable redis
COPY --from=composer-stage /usr/bin/composer /usr/bin/composer
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

FROM base as base-app
# COPY ./php/ini/conf.d/ /usr/local/etc/php/conf.d/
WORKDIR /var/www/html

EXPOSE 9000

FROM base-app as development-app
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
USER $user
# COPY ./php/ini/dev.php.ini /usr/local/etc/php/php.ini

FROM base-app as final-app
# COPY ./php/ini/prod.php.ini /usr/local/etc/php/php.ini
USER www-data



