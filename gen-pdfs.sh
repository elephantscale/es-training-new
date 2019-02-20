#!/bin/bash

## TODO-FIX : This script has to be run from the top level directory

## absolute path
# this="${BASH_SOURCE-$0}"
# mydir=$(cd -P -- "$(dirname -- "$this")" && pwd -P)
# script="$(basename -- "$this")"
# this="$mydir/$script"

## relative path
#this="${BASH_SOURCE-$0}"
#mydir=$(dirname -- "$this")

mydir="."

#md_files=$(find keras -type f -name "*.md")
md_files="$@"
for md_file in $md_files
do
    #echo $md_file
    syntax="googlecode"
    #light syntax choices are :  atom-one-light  github  googlecode

    #output_file="${md_file%.*}-$theme.pdf"
    output_file="${md_file%.*}.pdf"

    echo "===== printing '$md_file' --> '$output_file'"

    reveal-md --port 1949 \
    $md_file \
    --theme "$mydir/assets/css/theme/es.css" \
    --template "$mydir/assets/css/es-template.html"  \
    --highlight-theme $syntax  \
    --print "$output_file"

done
