FROM alterway/php:5.3-fpm

# Install libs
RUN apt-get update && apt-get install -y \
	libmcrypt-dev  \
	libicu-dev \
	mysql-client \
	&& docker-php-ext-install pdo_mysql \
 		iconv \
 		mcrypt \
		intl \
		mbstring

# php gd
RUN apt-get update -y && apt-get install -y \
 	libpng-dev \
	&& docker-php-ext-install gd


# php soap
RUN apt-get update -y && apt-get install -y \
    libxml2-dev \
    php-soap \
  	&& apt-get clean -y \
  	&& docker-php-ext-install soap


CMD ["php-fpm"]