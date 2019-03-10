#!/bin/bash

## simple theme
#reveal-md -w --theme simple --highlight-theme  googlecode --listing-template assets/css/listing-simple.html  .

## black theme
#reveal-md -w --theme black --highlight-theme  atom-one-dark --listing-template assets/css/listing-black.html  .


## ES theme
if [ -f /.dockerenv ]; then
    #echo "I'm inside container"
    reveal-md --disable-auto-open --theme assets/css/theme/es.css --template assets/css/es-template.html --highlight-theme  atom-one-light --listing-template assets/css/listing-simple.html .
else
    # echo "I'm living in real world!"
    reveal-md --watch --theme assets/css/theme/es.css --template assets/css/es-template.html --highlight-theme  atom-one-light --listing-template assets/css/listing-simple.html .
fi

