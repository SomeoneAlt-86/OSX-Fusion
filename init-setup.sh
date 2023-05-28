#!/bin/bash

echo Checking requirements 
sudo sh auto-docker.sh

echo Pulling SickCodes pre installed Catalina 
docker pull sickcodes/docker-osx:auto
echo
echo username is user and passsword is alpine
echo Install macOS and run post-setup.sh
echo
docker run -it \
    --device /dev/kvm \
    -p 50922:10022 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e "DISPLAY=${DISPLAY:-:0.0}" \
    -e GENERATE_UNIQUE=true \
    sickcodes/docker-osx:auto
    


