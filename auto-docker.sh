#!/bin/bash 

sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo chmod 666 /var/run/docker.sock
