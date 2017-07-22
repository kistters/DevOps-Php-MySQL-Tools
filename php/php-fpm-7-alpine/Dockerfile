FROM php:7.1-fpm-alpine

RUN apk add --no-cache \
    libpng libpng-dev libjpeg-turbo-dev  \    
    && docker-php-ext-configure gd  \
        --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install \
        gd 

RUN apk add --no-cache \
    libmcrypt-dev \
    && docker-php-ext-install \
        mcrypt \
        pdo_mysql 

RUN apk add --update --no-cache \
    libintl icu icu-dev libxml2-dev \
    && docker-php-ext-install \
        intl zip 

RUN apk add --update --no-cache \
    libxslt-dev \
    && docker-php-ext-install \
        xsl

RUN apk add --update --no-cache \
        curl \ 
        g++ \
        make \
        autoconf \
    && docker-php-source extract \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-source delete \
    && rm -rf /tmp/*

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer


USER www-data

WORKDIR /storage