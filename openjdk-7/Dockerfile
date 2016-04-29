FROM python:2.7-slim

MAINTAINER André Nishitani <andre.nishitani@gmail.com>

ENV VERSION 7

RUN echo 'deb http://http.debian.net/debian jessie-backports main' >> /etc/apt/source.list && \
	apt-get update && apt-get install openjdk-$VERSION-jdk -y && \
	apt-get autoclean && apt-get --purge -y autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD [ '/bin/bash' ]
