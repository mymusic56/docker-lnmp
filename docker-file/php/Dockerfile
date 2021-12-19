FROM php:7.2-fpm
ADD sources.list /etc/apt/
ADD composer.phar /tmp/
RUN apt-get update && apt-get install -y \
        libxslt-dev \
        libtinfo5 \
        libreadline7 \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
		libmcrypt-dev \
		libsasl2-2 \
		libsasl2-dev \
        libmemcached-dev \
        libpng-dev \
        libfreetype6 \
        libfreetype6-dev \
        freetds-bin \
        freetds-dev \
        freetds-common \
		openssl \
		libbz2-dev \
		libyaml-dev \
		libicu-dev \
		libz-dev \
		libzip-dev \
		net-tools \
		iputils-ping \
		vim \
		curl \
		zip \
		wget \
		gnupg-agent \
        gnupg \
	&& apt-get clean && ln -s /usr/lib/x86_64-linux-gnu/libsybdb.so /usr/lib/libsybdb.so \
    && mv /tmp/composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
RUN docker-php-ext-install -j$(nproc) bcmath \
        bz2 \
        calendar \
        dba \
        exif \
        intl \
    && docker-php-ext-configure gd \
        --with-png-dir=/usr/include \
        --with-jpeg-dir=/usr/include/ \
        --with-freetype-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
        gettext \
        opcache \
        pcntl \
        pdo \
        mysqli \
        pdo_mysql \
        pdo_dblib \
#        pdo_pgsql
        shmop \
        soap \
        sockets \
        sysvmsg \
        sysvsem \
        sysvshm \
#        tidy \
#        wddx \
#        xmlrpc \
        xsl \
        zip \
    && pecl install apcu \
        redis \
        xdebug \
        memcached \
        mongodb \
        yaml \
    && docker-php-ext-enable memcached redis xdebug mongodb yaml
#创建用户，让宿主机和容器用户相同，也可以在宿主机创建www-data用户，gid=33,uid=33
#RUN groupadd www -g 9002 && useradd -s /sbin/nologin -u 9002 -g www www
WORKDIR /data/htdocs