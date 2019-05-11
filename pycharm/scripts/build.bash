#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $script_dir

source ./props.bash

# docker build script
docker build -t ${docker_tag} ..

sudo ln -s $script_dir/run.bash /usr/local/bin/"d$docker_tag"

