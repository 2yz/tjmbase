FROM debian:8.5

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y git rsync \
	&& rm -rf /var/lib/apt/lists/* \
	&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD bin/* /usr/local/bin/
