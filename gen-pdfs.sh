#!/bin/bash

## TODO-FIX : This script has to be run from the top level directory

mydir="."
port=2001

md_files="$@"
for md_file in $md_files
do
    #echo $md_file
    syntax="googlecode"
    #light syntax choices are :  atom-one-light  github  googlecode

    #output_file="${md_file%.*}-$theme.pdf"
    output_file="${md_file%.*}.pdf"

    echo "===== printing '$md_file' --> '$output_file'"

    reveal-md --port $port \
    $md_file \
    --theme "$mydir/assets/css/theme/es.css" \
    --template "$mydir/assets/css/es-template.html"  \
    --highlight-theme $syntax  \
    --print "$output_file"

done
