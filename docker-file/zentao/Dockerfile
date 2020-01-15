FROM centos:7.4.1708
RUN yum makecache fast \
    && yum install -y \
        curl \
        vim  \
        wget \
        zip
RUN wget http://dl.cnezsoft.com/zentao/11.5.1/ZenTaoPMS.11.5.1.zbox_64.tar.gz -O /tmp/ZenTaoPMS.11.5.1.zbox_64.tar.gz \
    && tar -zxvf /tmp/ZenTaoPMS.11.5.1.zbox_64.tar.gz -C /opt \
    && rm -rf /tmp/ZenTaoPMS.11.5.1.zbox_64.tar.gz \
    && /opt/zbox/zbox -ap 8080 -mp 3309
# docker run --name zentao -p 8090:80 -v /data/htdocs/zentao:/opt/zbox -d zentao:latest
EXPOSE 8080
EXPOSE 3309
CMD ["/opt/zbox/zbox", "start"]