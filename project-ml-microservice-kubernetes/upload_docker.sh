#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
#dockerpath=<yavormihalski/api>
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username yavormihalski
docker tag api yavormihalski/api:V1
# Step 3:
# Push image to a docker repository
docker push yavormihalski/api