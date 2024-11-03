#!/bin/bash
set -e

# Get the container ID of the running container
containerID=$(docker ps | awk '{print $1}' | head -n 1)

# Remove the container forcefully
docker rm -f "$containerID"
