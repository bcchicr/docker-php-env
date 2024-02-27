ARG COMPOSER_VERSION
FROM composer:${COMPOSER_VERSION} as development
CMD bash -c "composer install --no-interaction"

FROM composer:${COMPOSER_VERSION} as final
CMD bash -c "composer install --optimize-autoloader --no-dev --no-interaction"
