#!/bin/bash

DIR1="$(dirname "$(readlink "$0")")"
echo $DIR1
DIR2="$(cd "$(dirname "$0")" && pwd)"
echo $DIR2

#pushd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd "$(dirname "$(readlink "$0")")"

source ./props.bash

echo $pycharm_projectdir

source ../../scripts/set-display.bash

popd

init_display

if [ $# -ne 1 ]; then
  echo "error: one argument required"
  echo "Usage: dpycharm <.|directory>"
  echo "       dir argument is used to mount the directory inside the docker instace of pycharm"
  echo "       . equates to current directory (use if you are in root of the project"
  exit 1
fi

project_dir=$(pwd)
if [ "$1" != "." ]; then
  project_dir=$1
fi

docker run -iv $HOME/.docker-volumes/pycharm/userconfig${pycharm_version_configdir}:/home/user/.PyCharmCE${pycharm_version_configdir} -v $project_dir:/home/user/PycharmProjects -e DISPLAY=${DOCKER_DISPLAY} pycharm # /bin/bash


