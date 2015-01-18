FROM centos:7
MAINTAINER Qiu Yu <unicell@gmail.com>

RUN yum install -q -y epel-release
RUN yum install -y python-pip m2crypto
RUN pip install shadowsocks==2.6.4

ENTRYPOINT ["/usr/bin/ssserver"]
