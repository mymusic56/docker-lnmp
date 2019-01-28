mkdir -p /home/www/mysql/conf
mkdir -p /home/www/mysql/mysql-files
mkdir -p /home/www/mysql/var
mkdir -p /home/www/mysql/data
mkdir -p /home/www/nginx/conf/
mkdir -p /home/www/nginx/conf/vhost
mkdir -p /home/www/php/conf/

cp my.cnf /home/www/mysql/conf
cp php.ini /home/www/php/conf/
cp php-fpm.conf /home/www/php/conf/
cp home.dc.mytest.com.conf /home/www/nginx/conf/vhost
