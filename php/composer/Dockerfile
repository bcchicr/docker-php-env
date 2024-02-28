ARG COMPOSER_VERSION
FROM composer:${COMPOSER_VERSION} as base
COPY ./install.sh /usr/local/bin/install.sh

FROM base as development
CMD bash -c "install.sh development"

FROM base as final
CMD bash -c "install.sh final"
