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
  echo "Usage: didea <.|directory>"
  echo "       dir argument is used to mount the directory inside the docker instace of idea"
  echo "       . equates to current directory (use if you are in root of the project"
  exit 1
fi

user_dir=$(pwd)
if [ "$1" != "." ]; then
  user_dir=$1
fi

mkdir -p $HOME/.docker-volumes/idea/userconfig${idea_version_configdir}

docker run -i -v $user_dir:/home/user -v $SOCKET_MAPPING:$SOCKET_MAPPING -e DISPLAY=${DOCKER_DISPLAY} idea  #/bin/bash


