http://www.supervisord.org/


### Docker镜像参考：
https://hub.docker.com/r/ochinchina/supervisord

在其他镜像中加入supervisord，使用--from
```
FROM debian:latest
COPY --from=ochinchina/supervisord:latest /usr/local/bin/supervisord /usr/local/bin/supervisord
CMD ["/usr/local/bin/supervisord"]
```