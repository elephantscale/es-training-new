#!/bin/bash

set -e

## this is the script that runs on docker instance bootup

if  [ -z "$ES_HOME" ] ; then
    echo "ES_HOME is not defined.  Exiting."
    exit
fi

if [ -d "$ES_HOME/utils/presentations" ] ; then 
    echo "es-utils available at : $ES_HOME/utils"
else
    echo "es-utils not found"
fi


## check work/es-training-new
es_training_dir="$HOME/work"
port=2000
syntax="googlecode"

if [ -d "$es_training_dir/assets/reveal" ] ; then
    echo "Starting reveal-md server on port $port"

    #echo "I'm inside container"
    (cd $es_training_dir ; nohup reveal-md --port $port --watch --disable-auto-open --theme assets/reveal/css/es.css --template assets/reveal/es-template.html --highlight-theme  $syntax --listing-template  assets/reveal/listing-simple.html .  2&>1  > reveal-md.out & )
    
    echo "Go to : http://localhost:$port"
else
    echo "'$es_training_dir/assets/reveal' not found.   Not starting reveal-md server"
fi

#exec "$@"
/bin/bash
