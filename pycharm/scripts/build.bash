#!/bin/bash

source ./props.bash

# docker build script
docker build -t ${docker_tag} ..
