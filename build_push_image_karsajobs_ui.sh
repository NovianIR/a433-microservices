#!/bin/bash

# Build Docker image
docker build -t novianilham/karsajobs-ui:latest .

# Login to Docker Hub
docker login -u novianilham -p NggakBolehTahu8

# Push image to Docker Hub
docker push novianilham/karsajobs-ui:latest
