############################################################################
#! /bin/sh                                                                 #
# Build and push image script for karsajobs frontend                       #
# Created by Teddy Budiman (c) 2023                                        #
############################################################################

# Build image from Dockerfile
docker build -t karsajobs-ui .

# Tag image with Docker Hub name format
docker tag karsajobs-ui:latest teddybman/karsajobs-ui:latest 

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u teddybman --password-stdin

# Upload image to Docker Hub
docker push teddybman/karsajobs-ui:latest