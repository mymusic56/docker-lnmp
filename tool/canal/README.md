```bash
docker pull canal/canal-server:v1.1.4
docker pull canal/canal-admin:v1.1.4
```

```bash
sh run.sh -e canal.auto.scan=false \
-e canal.destinations=test \
-e canal.instance.master.address=127.0.0.1:3306  \
-e canal.instance.dbUsername=canal  \
-e canal.instance.dbPassword=123456  \
-e canal.instance.connectionCharset=UTF-8 \
-e canal.instance.tsdb.enable=true \
-e canal.instance.gtidon=false
```

canal 1.1.4版本，迎来最重要的WebUI能力，引入canal-admin工程，支持面向WebUI的canal动态管理能力，支持配置、任务、日志等在线白屏运维能力
```
sh  run_admin.sh -e server.port=8089 \
-e spring.datasource.address=127.0.0.1:3306 \
-e spring.datasource.database=canal_manager \
-e spring.datasource.username=canal \
-e spring.datasource.password=123456 \
-e canal.adminUser=admin \
-e canal.adminPasswd=admin
```

WARNING: Published ports are discarded when using host network mode