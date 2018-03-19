FROM php:7.2-fpm

COPY php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client \
    && docker-php-ext-install pdo_mysql && \
    #zip,unzip
    apt-get install -y zip unzip && \
    #vim
    apt-get install -y vim && \
    #composer
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# RUN docker-php-ext-install pdo_mysql mysqli mbstring

# Install nvm
ENV NVM_DIR $HOME/nvm
ENV NODE_VERSION 8.9.4

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
