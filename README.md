# Build corp base image for Ubuntu 20.04 

## Base image 
https://hub.docker.com/_/docker (dind)

## Pacakge list
No additional packages

## Files
copy daemon.json to /etc/docker/daemon.json. Daemon.json configures insecure private container registry
daemon.json = copy to /etc/docker to allow http (insecure) access to repo.corp.porter.com docker repo

## Build command
$ docker build --tag repo:8083/corp-dind .


### Run dind (docker in docker) base container alone
$ docker run --privileged -d --name some-docker docker:dind
$ docker ps -a

login to the container
$ docker container exec -it a90c45395c1f /bin/sh
