FROM ubuntu:18.04
RUN apt-get update && apt-get install \
    		vim \
    		wget \
    		curl \
    		zip \
    && apt-get clean \
RUN wget http://dl.cnezsoft.com/zentao/11.6.5/ZenTaoPMS.11.6.5.zbox_64.tar.gz -O /tmp/ZenTaoPMS.11.6.5.zbox_64.tar.gz \
    && tar -zxvf  /tmp/ZenTaoPMS.11.6.5.zbox_64.tar.gz -C /opt \
    && rm -f /tmp/ZenTaoPMS.11.6.5.zbox_64.tar.gz \
    && /opt/zbox/zbox -ap 8080 -mp 3307

CMD ["/opt/zbox/zbox", "start"]

