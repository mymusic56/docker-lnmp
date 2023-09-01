```shell
docker build --rm -t rabbitmq:3.8.9-m . 
```

```shell
docker run --net=my_cluster -d -p 15672:15672 -p 25672:25672 -p 4369:4369 -p 5671:5671 -p 5672:5672 -v /var/lib/rabbitmq/:/var/lib/rabbitmq/ --name rabbit3.8.9 rabbitmq:3.8.9-m
```