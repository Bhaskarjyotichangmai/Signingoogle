#!/bin/bash
CONTAINER_NAME="iperk-dev-fcontainer"
if sudo docker ps -a | grep -q "$CONTAINER_NAME"; then
    sudo docker kill "$CONTAINER_NAME"
    sudo docker rm "$CONTAINER_NAME"
    echo "Container $CONTAINER_NAME killed and removed."
    sudo docker rmi $(docker images -q)
else
    echo "Container $CONTAINER_NAME does not exist."
fi