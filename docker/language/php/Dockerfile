FROM php:7.2-fpm

COPY php.ini /usr/local/etc/php/

# RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client \
#     && docker-php-ext-install mcrypt pdo_mysql && \
#     #zip,unzip
#     apt-get install -y zip unzip && \
#     #vim
#     apt-get install -y vim && \
#     #composer
#     curl -sS https://getcomposer.org/installer | php && \
#     mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install pdo_mysql mysqli mbstring

COPY php.ini /usr/local/etc/php/
