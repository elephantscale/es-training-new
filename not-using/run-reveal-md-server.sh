#!/bin/bash

port=2000

# choices are : googlecode, atom-one-light
syntax="googlecode"

## ES theme
if [ -f /.dockerenv ]; then
    #echo "I'm inside container"
    reveal-md --port $port --disable-auto-open --theme assets/reveal/css/es.css --template assets/reveal/es-template.html --highlight-theme  $syntax --listing-template  assets/reveal/listing-simple.html .
else
    # echo "I'm living in real world!"
    reveal-md --port $port --watch --theme assets/reveal/css/es.css --template assets/reveal/es-template.html --highlight-theme  $syntax --listing-template  assets/reveal/listing-simple.html .
fi
