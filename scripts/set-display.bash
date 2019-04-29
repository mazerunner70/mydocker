
function init_mac_os() {
  printf "Initialising MacOS\n"
  if lsof -i :6000 >/dev/null ; then
    printf "Found socat started\n"
  else
    printf "Starting socat at :6000\n"
    socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
    printf "initialised socat\n"
  fi
    
  export DOCKER_DISPLAY="docker.for.mac.host.internal:0"
}

function init_linux() {
  printf "Initialising Linux\n"
  export DOCKER_DISPLAY=${DISPLAY}
}

function init_display() {
  os="$(uname -s)"
  printf "Operating system: $os\n"
  case $os in
    Darwin)
      init_mac_os
      ;;
  esac
}

#init_display "darwin"
#printf "$DOCKER_DISPLAY\n"
