https://cn.dubbo.apache.org/zh-cn/docsv2.7/admin/ops/introduction/

## zookeeper安装

```shell
docker run --net=my_cluster --name=zookeeper -d -p 2181:2181 -p 2888:2888 -p 3888:3888 -p 8080:8080 zookeeper:3.6.4
```

## Dubbo admin安装

```shell
docker run -itd --net=my_cluster --name dubbo-admin -p 38080:38080 \
  -v /data/htdocs/docker-lnmp/tool/dubbo/dubbo-admin-properties/:/config apache/dubbo-admin:0.6.0
```
- /data/htdocs/docker-lnmp/tool/dubbo/dubbo-admin-properties/ 替换成自己的目录 
- /data/htdocs/docker-lnmp/tool/dubbo/dubbo-admin-properties/下增加配置文件`application.properties`
```
admin.registry.address=zookeeper://zookeeper:2181
admin.config-center=zookeeper://zookeeper:2181
admin.metadata-report.address: zookeeper://zookeeper:2181
```

测试： http://home.mytest.com:38080

## 问题
- dubbo-admin加载不出zk的服务
  - dubbo服务`dubbo-provider.xml`配置文件需要修改group为dubbo`<dubbo:registry group="dubbo" address="zookeeper://${zookeeper.address}" register="true"/>`