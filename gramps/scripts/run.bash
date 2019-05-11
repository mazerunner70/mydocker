#!/bin/bash

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.docker-volumes/gramps:/home/user1 -e DISPLAY=${DISPLAY} gramps

