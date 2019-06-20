#!/bin/bash

mkdir -p $HOME/.docker-volumes/calibre

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.docker-volumes/calibre:/home/user1 -e DISPLAY=${DISPLAY} calibre

