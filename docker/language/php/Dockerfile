FROM php:7.2.11-fpm-alpine

COPY php.ini /usr/local/etc/php/

RUN apk update \
    && apk add --no-cache libmcrypt-dev \
    mysql-client \
    zip \
    unzip \
    vim \
    zsh \
    autoconf \
    libtool \
    g++ \
    git \
    make \
    && pecl install redis \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable redis \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Install nvm
# ENV NVM_DIR $HOME/nvm
# ENV NODE_VERSION 8.9.4

# RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash \
#     && . $NVM_DIR/nvm.sh \
#     && nvm install $NODE_VERSION \
#     && nvm alias default $NODE_VERSION \
#     && nvm use default

# ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
# ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

WORKDIR /var/www/

EXPOSE 9000