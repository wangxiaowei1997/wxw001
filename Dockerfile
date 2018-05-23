FROM ubuntu:16.04
RUN apt-get update
#RUN apt-get install python-pip
RUN pip install --upgrade pip
RUN install shadowsocks 

ENTRYPOINT [ "/usr/local/bin/ssserver -c /etc/shadowsocks.json" ]


