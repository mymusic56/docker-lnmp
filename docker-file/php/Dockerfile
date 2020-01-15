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
		libicu-dev \
		libz-dev \
		inetutils-ping \
		vim \
		curl \
		zip \
		wget \
		supervisor \
	&& apt-get clean \
RUN curl -sS https://getcomposer.org/installer | php \
       && mv composer.phar /usr/local/bin/composer \
       && composer self-update --clean-backups \
       && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
	&& docker-php-ext-install -j$(nproc) \
	    bcmath \
	    exif \
	    fileinfo \
	    iconv \
	&& docker-php-ext-configure ldap --with-ldap=/usr/lib/x86_64-linux-gnu
#	ftp://ftp.openldap.org/pub/OpenLDAP/openldap-stable/openldap-stable-20000129.tgz
	&& docker-php-ext-install -j$(nproc) ldap \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
	&& docker-php-ext-install -j$(nproc) gettext \
	    mysqli \
	    pdo_mysql \
	    opcache \
	    pcntl \
	    shmop \
	&& pecl install apcu-5.1.16 \
	    redis-4.2.0 \
	    xdebug-2.6.1 \
	    memcached-3.1.3 \
	    mongodb-1.5.3 \
    && docker-php-ext-enable apcu redis xdebug memcached mongodb
WORKDIR /data/htdocs