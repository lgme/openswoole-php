FROM php:8.4-cli

RUN apt-get update && \
    apt-get install -y git unzip libssl-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pecl install -f -D 'enable-openssl="no" enable-sockets="no" enable-http2="no" enable-mysqlnd="no" enable-hook-curl="no" with-postgres="no"' openswoole \
    && docker-php-ext-enable openswoole

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR www

COPY ./src /www

RUN composer require openswoole/core \
    && composer require openswoole/ide-helper --dev

CMD ["php", "server.php"]