https://github.com/alibaba/canal/wiki/QuickStart

https://github.com/alibaba/canal/blob/master/docker/run.sh

## 依赖

MySQL、RabbitMQ

## canal-admin SQL初始化
参见 conf/canal-admin/canal_manager.sql

## 启动
```
docker run -it --rm \
    -e canal.destinations=test \
    -e canal.instance.master.address=mysql5.7:3306 \
    -e canal.instance.dbUsername=canal \
    -e canal.instance.dbPassword=123456 \
    -e canal.instance.connectionCharset=UTF-8 \
    -e canal.instance.tsdb.enable=false \
    -e canal.instance.gtidon=true \
    -e canal.instance.filter.regex=.*\..* \
    -v /var/canal-server/logs/:/home/admin/canal-server/logs/ \
    --name=canal-server \
    --net=my_cluster \
    -p 11110:11110 -p 11111:11111 -p 11112:11112 -p 9100:9100 \
    -m 4096m canal/canal-server:v1.1.6
```