FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install python-pip && \
    pip install --upgrade pip && \
    pip install shadowsocks 

ENTRYPOINT [ "/usr/local/bin/ssserver -c /etc/shadowsocks.json" ]



