#!/bin/bash

source ../../scripts/set-display.bash

init_display

docker run -it -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=${DOCKER_DISPLAY} xeyes

