FROM php:7.1-fpm
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmemcached-dev \
        libpng-dev \
        zlib1g-dev \
		openssl \
		libssl-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install redis-3.1.4 \
    && pecl install xdebug-2.6.0 \
    && pecl install memcached-3.0.4 \
    && pecl install mongodb-1.3.4 \
    && docker-php-ext-enable memcached redis xdebug mongodb \
