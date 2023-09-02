https://github.com/alibaba/canal/wiki/QuickStart

https://github.com/alibaba/canal/blob/master/docker/run.sh

## 依赖

MySQL、RabbitMQ

## canal-admin SQL初始化
参见 conf/canal-admin/canal_manager.sql

## 启动
```
docker run -it --rm \
    -e server.port=8089 \
    -e spring.datasource.address=mysql5.7:3306 \
    -e spring.datasource.database=canal_manager \
    -e spring.datasource.username=root \
    -e spring.datasource.password=123456 \
    -e canal.adminUser=admin \
    -e canal.adminPasswd=123456 \
    -v /var/canal-admin/logs/:/home/admin/canal-admin/logs/ \
    --name=canal-admin \
    --net=my_cluster \
    -p 8089:8089 \
    canal/canal-admin:v1.1.6

docker run -it --rm \
    -e canal.destinations=test \
    -e canal.instance.master.address=mysql5.7:3306 \
    -e canal.instance.dbUsername=canal \
    -e canal.instance.dbPassword=123456 \
    -e canal.instance.connectionCharset=UTF-8 \
    -e canal.instance.tsdb.enable=false \
    -e canal.instance.gtidon=true \
    -e canal.instance.filter.regex=.*\..* \
    -e canal.admin.manager=canal-admin:8089 \
    -e canal.admin.port=11110 \
    -e canal.admin.user=admin \
    -e canal.admin.passwd=6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9 \
    -e canal.admin.register.auto=true \
    -v /var/canal-server/logs/:/home/admin/canal-server/logs/ \
    --name=canal-server \
    --net=my_cluster \
    -p 11110:11110 -p 11111:11111 -p 11112:11112 -p 9100:9100 \
    -m 4096m canal/canal-server:v1.1.6
```