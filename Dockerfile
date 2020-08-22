FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN apt-get update && \
    apt-get install -y git zip php-mysql
RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer