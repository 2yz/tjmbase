FROM debian:8.5

ADD bin/* /usr/local/bin/

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y git rsync \
	&& rm -rf /var/lib/apt/lists/* \
	&& ln -s -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

