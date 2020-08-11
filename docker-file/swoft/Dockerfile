FROM php:7.3

ADD sources.list /etc/apt/
ADD composer.phar /tmp/

# Timezone
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone
    # Libs
RUN apt-get update \
    && apt-get install -y \
        apt-utils \
        curl \
        vim  \
        wget \
        git \
        zip \
        libz-dev \
        libssl-dev \
        libnghttp2-dev \
        libpcre3-dev \
    && apt-get clean
# Version
ENV PHPREDIS_VERSION 5.1.1
ENV SWOOLE_VERSION 4.4.16

    # composer
RUN mv /tmp/composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    && docker-php-ext-install pdo_mysql bcmath \
            sockets \
            sysvmsg \
            sysvsem \
            sysvshm \
    && pecl install redis-${PHPREDIS_VERSION} \
    # Swoole extension
    && wget https://github.com/swoole/swoole-src/archive/v${SWOOLE_VERSION}.tar.gz -O swoole.tar.gz \
    && mkdir -p swoole \
    && tar -xf swoole.tar.gz -C swoole --strip-components=1 \
    && rm swoole.tar.gz \
    && ( \
        cd swoole \
        && phpize \
        && ./configure  --enable-openssl  --enable-http2 \
        && make -j$(nproc) \
        && make install \
    ) \
    && rm -r swoole \
    && docker-php-ext-enable redis swoole

#设置工作目录
WORKDIR /data/htdocs/

#可以使用官方提供的安装包，里面有更多的工具


