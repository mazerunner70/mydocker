#!/bin/bash

source ./props.bash

source ../../scripts/set-display.bash

init_display

docker run -iv $HOME/.docker-volumes/pycharm/userconfig:/home/user/.PyCharmCE${pycharm_version_configdir} -v $HOME/.docker-volumes/pycharm/projectfiles:/home/user/PycharmProjects -e DISPLAY=${DOCKER_DISPLAY} pycharm # /bin/bash


