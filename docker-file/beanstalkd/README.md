```
# -b DIR   write-ahead log directory
# -f MS    fsync at most once every MS milliseconds (use -f0 for "always fsync")
# -F       never fsync (default)
# -l ADDR  listen on address (default is 0.0.0.0)
# -p PORT  listen on port (default is 11300)
# -u USER  become user and group
# -z BYTES set the maximum job size in bytes (default is 65535)
# -s BYTES set the size of each write-ahead log file (default is 10485760)
#            (will be rounded up to a multiple of 512 bytes)
# -c       compact the binlog (default)
# -n       do not compact the binlog
# -v       show version information
# -V       increase verbosity
# -h       show this help
```
Dockerfile参考： https://hub.docker.com/r/uretgec/beanstalkd-alpine/dockerfile

镜像源： https://developer.aliyun.com/mirror/alpine