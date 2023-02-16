#!/usr/bin/env bash

#---------------------------------------------------------------------------------------------------
#  *                              Docker Build-Script
#    
#    Author: Bill Fritz
#    Description: Build script for Docker base images
#    Last Modified: 2023-02-16
#    
#---------------------------------------------------------------------------------------------------

export DOCKER_BUILDKIT=1

docker build -t uwbfritz/devbase:7.4 -f dockerfiles/Dockerfile-74 .
docker build -t uwbfritz/devbase:8.1 -f dockerfiles/Dockerfile-81 .
docker build -t uwbfritz/devbase:8.2 -f dockerfiles/Dockerfile-82 .

docker push uwbfritz/devbase:7.4
docker push uwbfritz/devbase:8.1
docker push uwbfritz/devbase:8.2


