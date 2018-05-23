FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install python-pip python-dev build-essential

RUN pip install shadowsocks 

ENTRYPOINT [ "/usr/local/bin/ssserver -c /etc/shadowsocks.json" ]


