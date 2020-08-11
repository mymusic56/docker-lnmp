FROM xg.cc/php-fpm:5.5
#ADD sources.list /etc/apt/
ADD composer.phar /tmp/composer.phar
RUN apt-get update && apt-get install -y \
		vim \
		curl \
		zip \
	&& apt-get clean \
    && mv /tmp/composer.phar /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && composer self-update --clean-backups \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/