#!/bin/sh
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run --gpus=all -ti -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v $HOME:$HOME -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -e DISPLAY -e NVIDIA_DRIVER_CAPABILITIES=all --user $UID:$GROUPS cura-le:latest
