FROM php:7.2-fpm
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
		libmcrypt-dev \
        libmemcached-dev \
        libpng-dev \
        zlib1g-dev \
		openssl \
		libssl-dev \
	&& docker-php-ext-install -j$(nproc) bcmath \
	&& docker-php-ext-install -j$(nproc) exif \
    && docker-php-ext-install -j$(nproc) fileinfo \ 
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
	&& docker-php-ext-install -j$(nproc) gettext \
	&& docker-php-ext-install -j$(nproc) mysqli \
	&& docker-php-ext-install -j$(nproc) opcache \
	&& docker-php-ext-install -j$(nproc) pcntl \
	&& docker-php-ext-install -j$(nproc) pdo_mysql \
	&& docker-php-ext-install -j$(nproc) shmop \
	&& pecl install apcu-5.1.16 \
    && pecl install redis-4.2.0 \
    && pecl install xdebug-2.6.0 \
    && pecl install memcached-3.1.3 \
    && pecl install mongodb-1.5.3 \
    && docker-php-ext-enable memcached redis xdebug mongodb
RUN usermod -u 1002 www-data