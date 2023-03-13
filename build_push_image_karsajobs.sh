############################################################################
#! /bin/sh                                                                 #
# Build and push image script for karsajobs backend                        #
# Created by Teddy Budiman (c) 2023                                        #
############################################################################

# Build image from Dockerfile
docker build -t karsajobs .

# Tag image with Docker Hub name format
docker tag  karsajobs teddybman/karsajobs:latest

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u teddybman --password-stdin

# Upload image to Docker Hub
docker push teddybman/karsajobs:latest