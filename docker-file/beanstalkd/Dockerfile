FROM alpine:3.11
LABEL maintainer="961272668@qq.com"

ENV VERSION="1.11"

#修改成阿里云镜像
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  && addgroup -S beanstalkd && adduser -S -G beanstalkd beanstalkd \
  && apk add --no-cache 'su-exec>=0.2' \
  && apk --update add --virtual build-dependencies \
  gcc \
  make \
  musl-dev \
  curl \
  && curl -sL https://github.com/kr/beanstalkd/archive/v$VERSION.tar.gz | tar xvz -C /tmp \
  && cd /tmp/beanstalkd-$VERSION \
  && sed -i "s|#include <sys/fcntl.h>|#include <fcntl.h>|g" sd-daemon.c \
  && make \
  && cp beanstalkd /usr/bin \
  && apk del build-dependencies \
  && rm -rf /tmp/* \
  && rm -rf /var/cache/apk/* \
  && mkdir /data && chown beanstalkd:beanstalkd /data
VOLUME ["/data"]
EXPOSE 11300

ENTRYPOINT ["beanstalkd", "-p", "11300", "-u", "beanstalkd"]
CMD ["-b", "/data"]