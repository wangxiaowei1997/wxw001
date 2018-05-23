FROM ubuntu:16.04
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install python-pip python-dev build-essential
RUN pip install shadowsocks 

ENTRYPOINT [ "/usr/local/bin/ssserver -c /etc/shadowsocks.json" ]


