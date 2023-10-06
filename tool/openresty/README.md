```shell
docker run --name openresty -p 80:80 -d \
  -v /data/htdocs/docker-lnmp/tool/openresty/nginx.conf/:/usr/local/openresty/nginx/conf/nginx.conf \
  -v /data/htdocs/docker-lnmp/tool/openresty/conf.d/:/etc/nginx/conf.d/ \
  -v /data/htdocs/docker-lnmp/tool/openresty/:/data/htdocs/docker-lnmp/tool/openresty/ \
  -v /var/openresty/logs/:/usr/local/openresty/nginx/logs/ \
  openresty/openresty:1.21.4.2-jammy
```