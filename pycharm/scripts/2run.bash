#!/bin/bash

source ./props.bash

source ../../scripts/set-display.bash

init_display

docker run -iv /Users/William.Ohara/tmp/userconfig:/home/user/.PyCharmCE${pycharm_version_configdir} -v /Users/William.Ohara/tmp/projectfiles:/home/user/PycharmProjects -e DISPLAY=${DOCKER_DISPLAY} pycharm # /bin/bash


