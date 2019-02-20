#!/bin/bash

port=1949

## ES theme include speaker note
reveal-md --port $port  keras/Keras-1__Intro.md --theme assets/css/theme/es.css --template assets/css/es-template.html --highlight-theme  atom-one-light --print keras/Keras-1__Intro.pdf

reveal-md --port $port  generic/DL-Intro.md --theme assets/css/theme/es.css --template assets/css/es-template.html --highlight-theme  atom-one-light --print generic/DL-Intro.pdf
