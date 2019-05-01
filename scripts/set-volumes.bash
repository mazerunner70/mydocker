#!/bin/bash

# Uses command substitution to return boolean values
# https://www.linuxjournal.com/content/return-values-bash-functions
function is_volume_defined()
{
  if docker volume ls | grep $1 >/dev/null ; then
    echo "true"
  else
    echo "false"
  fi
}

is_volume_defined "userconfig"

function add_volume() 
{
  local volume_defined = is_volume_defined $1
  if [ "$volume_defined" -eq "false" ]; then
    printf "%s" "adding volume " $1
    docker volume create $1 >/dev/null
    printf "%s\n" "done"
  else
    printf "%s" "volume " $1 " already present"
  fi
}
