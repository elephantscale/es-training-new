#!/bin/bash

if [ -z "$1" ] ; then
    echo "Usage:  $0    <image name>    [optional command]"
    echo "Missing Docker image id.  exiting"
    exit -1
fi

image_id="$1"
cmd="$2"


# mount the current directory at /home/jovyan/work
this="${BASH_SOURCE-$0}"
#mydir=$(cd -P -- "$(dirname -- "$this")" && pwd -P)
mydir=$(pwd -P)

## ports:
##  1948-1950 : Reveal UI

docker run -it   \
    --shm-size=1gb  \
    -p 2000:2000 -p 35729:35729 \
    -v"$mydir:/home/ubuntu/work" \
    "$image_id" \
    ${cmd}
