#!/bin/bash

# Build Docker image
docker build -t novianilham/karsajobs:latest .

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u novianilham --password-stdin

# Push image to Docker Hub
docker push novianilham/karsajobs:latest
