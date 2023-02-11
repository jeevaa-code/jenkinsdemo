#!/bin/bash

#author: jeevaa
#date_created: 01/09/22

#install Docker
yum update -y
yum install docker
systemctl start docker
systemctl enable docker

#install docker comp
curl -SL https://github.com/docker/compose/releases/download/v2.14.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose docker-compose –version 

#creating a docker file
touch autospark
echo "FROM ubuntu" > autospark
echo "RUN echo "welcome to automation" > welcome" >> autospark

#build image

docker build -t autoworld:v1 -f autospark .
docker images

#run a container

docker run -it autoworld:v1 bash

