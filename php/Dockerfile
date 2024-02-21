FROM php:8.2-fpm
ARG PHP_ENABLE_XDEBUG='off'

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


RUN if [ "${PHP_ENABLE_XDEBUG}" = "on" ]; then \
      pecl install xdebug && \
      docker-php-ext-enable xdebug; \
    fi

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/

CMD ["php-fpm"]

EXPOSE 9000
