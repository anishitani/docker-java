FROM python:2.7-slim

MAINTAINER André Nishitani <andre.nishitani@gmail.com>

ENV VERSION 7
ENV UPDATE 80
ENV BUILD 15

ENV JAVA_HOME /usr/lib/jvm/java-${VERSION}-oracle
ENV JRE_HOME ${JAVA_HOME}/jre

RUN apt-get update && apt-get install ca-certificates curl -y --no-install-recommends && \
	curl --location --retry 3 --cacert /etc/ssl/certs/GeoTrust_Global_CA.pem \
	--header "Cookie: oraclelicense=accept-securebackup-cookie;" \
	http://download.oracle.com/otn-pub/java/jdk/"${VERSION}"u"${UPDATE}"-b"${BUILD}"/server-jre-"${VERSION}"u"${UPDATE}"-linux-x64.tar.gz \
	| tar xz -C /tmp && \
	mkdir -p /usr/lib/jvm && mv /tmp/jdk1.${VERSION}.0_${UPDATE} "${JAVA_HOME}" && \
	apt-get autoclean && apt-get --purge -y autoremove && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN update-alternatives --install "/usr/bin/java" "java" "${JRE_HOME}/bin/java" 1 && \
	update-alternatives --install "/usr/bin/javac" "javac" "${JAVA_HOME}/bin/javac" 1 && \
	update-alternatives --set java "${JRE_HOME}/bin/java" && \
	update-alternatives --set javac "${JAVA_HOME}/bin/javac"

CMD [ '/bin/bash' ]
