FROM docker:18.05-dind
LABEL corp.maintainer="swporter001"
LABEL corp.image="CORP-dind"

ENV container=corp-dind

RUN mkdir /etc/docker && chown root:root /etc/docker && chmod 655 /etc/docker
COPY files/daemon.json /etc/docker
RUN chown root:root /etc/docker/daemon.json && chmod 644 /etc/docker/daemon.json
