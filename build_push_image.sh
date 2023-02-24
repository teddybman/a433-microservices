########################################################################################
# !/bin/sh                                                                             #
# Run this script to build docker image and push to docker repository                  #
# Created by : Teddy Budiman (c) 2023                                                  #
########################################################################################

# Build item-app image
echo "Building image......."
docker build -t item-app:v1 .

# Show list of local images
docker images

# Change image name to standard Docker Registry
docker tag item-app:v1 localhost:5000/item-app:v1

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u teddybman --password-stdin

# Change image name to standard Docker Hub
docker tag localhost:5000/item-app:v1 teddybman/item-app:v1

# Upload image to Docker Hub
docker push teddybman/item-app:v1