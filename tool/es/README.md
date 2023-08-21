### 构建ES镜像

```shell
docker build --rm -t es-with-ik-pinyin:7.17.7 . 
```

**logstash导入测试数据**

```
[root@localhost es]# touch movies.sincedb
[root@localhost es]# chmod 777 movies.sincedb
[root@localhost es]# docker run --network es_esnet --rm -v /data/htdocs/docker-lnmp/:/data/htdocs/docker-lnmp/ logstash:7.1.1 -f /data/htdocs/docker-lnmp/es/logstash-movilens.conf
```


kibana: http://home.mytest.com:5601

Cerebro: http://home.mytest.com:9100

es: http://home.mytest.com:9200
