FROM php:5.6-fpm
# Install modules
RUN apt-get update && apt-get install -y \
	libmcrypt-dev  \
	libicu-dev \
	mysql-client \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install iconv \
	&& docker-php-ext-install mcrypt \
	&& docker-php-ext-install intl \
	&& docker-php-ext-install opcache \
	&& docker-php-ext-install mbstring \
	&& pecl install xdebug  \
    && docker-php-ext-enable xdebug
    
COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
CMD ["php-fpm"]