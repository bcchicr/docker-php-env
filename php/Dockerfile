FROM composer:2.7.1 as prod-deps
WORKDIR /app
RUN --mount=type=bind,source=./app/composer.json,target=composer.json \
    --mount=type=bind,source=./app/composer.lock,target=composer.lock \
    --mount=type=cache,target=/tmp/cache \
    composer install --no-dev --no-interaction

FROM composer:2.7.1 as dev-deps
WORKDIR /app
RUN --mount=type=bind,source=./app/composer.json,target=composer.json \
    --mount=type=bind,source=./app/composer.lock,target=composer.lock \
    --mount=type=cache,target=/tmp/cache \
    composer install --no-interaction

FROM php:8.2-fpm as base
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y \
    curl \
    git \
    libpq-dev \
    libonig-dev \
    zip \
    unzip
RUN docker-php-ext-install pdo_pgsql mbstring
RUN pecl install redis && \
      docker-php-ext-enable redis
COPY --from=composer:2.7.1 /usr/bin/composer /usr/bin/composer
EXPOSE 9000

FROM base as development
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
COPY --from=dev-deps /app/vendor/ /var/www/html/vendor


FROM base as final
COPY --from=prod-deps /app/vendor/ /var/www/html/vendor
USER www-data



