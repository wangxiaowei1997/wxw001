FROM ubuntu:16.04
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-pip 
RUN pip install  shadowsocks 

COPY shadowsocks.json  /etc


ENTRYPOINT [ "/usr/local/bin/ssserver", "-c", "/etc/shadowsocks.json" ]


