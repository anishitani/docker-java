FROM anishitani/docker-ansible

MAINTAINER André Nishitani <andre.nishitani@gmail.com>

ADD playbook.yml /tmp/

WORKDIR /tmp

RUN /scripts/init_squid_cache.sh

ADD run.sh /tmp/
RUN /bin/bash run.sh

RUN /scripts/stop_squid_cache.sh

CMD [ '/bin/bash' ]
