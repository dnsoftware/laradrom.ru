FROM php:8.0-fpm-alpine as backend

# Import extension installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

# Install extensions
RUN install-php-extensions pdo_mysql bcmath opcache redis xdebug pgsql pdo_pgsql zip gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Configure PHP
COPY .docker/php.ini $PHP_INI_DIR/conf.d/opcache.ini
COPY .docker/xdebug.ini $PHP_INI_DIR/conf.d/xdebug.ini

# Use the default development configuration
RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

# Install extra packages
RUN apk update \
    && apk --no-cache add bash mysql-client mariadb-connector-c-dev

# Create user based on provided user ID
ARG UID
RUN adduser --disabled-password --gecos "" --uid $UID dmitry

# Switch to that user
USER dmitry


FROM backend as worker

# Start worker
#CMD ["php", "/var/www/backend/artisan", "queue:work"]
#CMD ["php", "/var/www/backend/artisan", "storage:link"]
CMD php /var/www/backend/artisan storage:link && php /var/www/backend/artisan queue:work
