#!/bin/bash

CONTAINER_NAME="sample"

# Check if the container exists and is running
if docker inspect -f '{{.State.Running}}' "$CONTAINER_NAME" &>/dev/null; then
    # Container exists and is running, so stop and remove it
    docker stop "$CONTAINER_NAME"
    docker rm "$CONTAINER_NAME"
else
    echo "Container $CONTAINER_NAME does not exist or is not running."
fi