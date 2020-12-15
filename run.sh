#!/bin/bash
if [[ -z $1 && -z $2 ]]; then
  echo "provide image name"
  exit
fi

docker run  \
   --privileged \
   --name ubuntu_bash \
   --mount type=bind,source=/tmp,target=/tmp \
   --rm -it \
   $1 \
   sh 
