https://cn.dubbo.apache.org/zh-cn/docsv2.7/admin/ops/introduction/

```shell
docker run -itd --net=my_cluster --name dubbo-admin -p 38080:38080 \
  -v /data/htdocs/docker-lnmp/tool/dubbo/dubbo-admin-properties/:/config apache/dubbo-admin:0.6.0
```

## 问题
- dubbo-admin加载不出zk的服务