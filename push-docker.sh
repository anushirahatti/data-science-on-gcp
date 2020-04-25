#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=data-science-on-gcp .


dockerpath="anushirahatti/data-science-on-gcp"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag b48c810fe868 $dockerpath

# Push Image
docker image push $dockerpath 
