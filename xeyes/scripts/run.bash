#!/bin/bash

docker run -it -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=${DISPLAY} xeyes

