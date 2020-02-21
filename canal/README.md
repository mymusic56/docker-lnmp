https://github.com/alibaba/canal/wiki/QuickStart

https://github.com/alibaba/canal/blob/master/docker/run.sh

```
docker run -d -it -h 192.168.29.143 \
    -e canal.admin.manager=mysql5.6:3306 \
    -e canal.admin.port=11110 \
    -e canal.admin.user=admin \
    -e canal.admin.passwd=123456 \
    --name=canal-server \
    --net=docker-lnmp_lnmp \
    -m 4096m \
    canal/canal-server:v1.1.4
    
    
    
./run.sh -e canal.admin.manager=127.0.0.1:8089 \
         -e canal.admin.port=11110 \
         -e canal.admin.user=admin \
         -e canal.admin.passwd=123456
         
docker run --rm -it -h 192.168.29.143 \
    -e canal.auto.scan=false \
    -e canal.destinations=test \
    -e canal.instance.master.address=127.0.0.1:3306 \
    -e canal.instance.dbUsername=canal \
    -e canal.instance.dbPassword=123456 \
    -e canal.instance.connectionCharset=UTF-8 \
    -e canal.instance.tsdb.enable=true \
    -e canal.instance.gtidon=false \
    --net=docker-lnmp_lnmp \
    --name=canal-server \
    --net=docker-lnmp_lnmp \
    -m 4096m \
    -p 11110:11110 \
    -p 11111:11111 \
    -p 11112:11112 \
    -p 9100:9100  \
    canal/canal-server
```