#!/bin/bash

#initial data
REGISTRY_URL="https://index.docker.io/v1/"
USERNAME="ibam11"

# build docker image
docker build -t item-app:v1 .

# show images
echo images created
docker images

# create new image for docker hub
docker tag item-app:v1 ibam11/item-app:v1

#login & push to docker
echo $PASSWORD_DOCKER_HUB | docker login $REGISTRY_URL -u $USERNAME --password-stdin
docker push ibam11/item-app:v1



