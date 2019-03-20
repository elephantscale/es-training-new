#!/bin/bash

set -e

## this is the script that runs on docker instance bootup

if  [ -z "$ES_HOME" ] ; then
    echo "ES_HOME is not defined.  Exiting."
    exit
fi

utils_dir=$ES_HOME/utils

## update utils
echo "ES_HOME=$ES_HOME"
echo "WORKING_DIR=$WORKING_DIR"
echo "utils repo=$utils_dir"

if [ ! -d "$utils_dir" ]; then
    cd $ES_HOME; git clone "git@github.com:elephantscale/utils.git"
fi
if  [ -d "$utils_dir" ]; then
    echo "updating utils at : $utils_dir"
    (cd "$utils_dir" && git pull)
fi

## check work/es-training-new
es_training_dir="$HOME/work"
port=2000
syntax="googlecode"

if [ -d "$es_training_dir/assets/reveal" ] ; then
    echo "Starting reveal-md server on port $port"

    if [ -f /.dockerenv ]; then
        #echo "I'm inside container"
        (cd $es_training_dir ; nohup reveal-md --port $port --watch --disable-auto-open --theme assets/reveal/css/es.css --template assets/reveal/es-template.html --highlight-theme  $syntax --listing-template  assets/reveal/listing-simple.html .  2&>1  > reveal-md.out & )
    else
        # echo "I'm living in real world!"
        (cd $es_training_dir ; reveal-md --port $port --watch --theme assets/reveal/css/es.css --template assets/reveal/es-template.html --highlight-theme  $syntax --listing-template  assets/reveal/listing-simple.html .  2&>1  > reveal-md.out & )
    fi

    echo "Go to : http://localhost:$port"
else
    echo "'$es_training_dir/assets/reveal' not found.   Not starting reveal-md server"
fi

#exec "$@"
/bin/bash
