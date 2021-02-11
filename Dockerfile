FROM docker:18.05-dind
LABEL corp.maintainer="swporter001"
LABEL corp.image="CORP-dind"

ENV container=corp-dind

RUN mkdir /etc/docker && chown root:root /etc/docker && chmod 655 /etc/docker
ADD ./files/daemon.json /etc/docker
RUN chown root:root /etc/docker/daemon.json && chmod 644 /etc/docker/daemon.json

RUN mkdir /root/.docker && chown root:root /root/.docker && chmod 655 /root/.docker
ADD ./files/config.json /root/.docker
RUN chown root:root /root/.docker/config.json && chmod 644 /root/.docker/config.json
