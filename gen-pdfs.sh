#!/bin/bash

me=`realpath $0`
my_dir=`dirname $me`
#my_dir="$( cd "$(dirname "$0")" ; pwd -P )"

port=2001

md_files="$@"
for input_file in $md_files
do
    #echo $input_file
    syntax="googlecode"
    #light syntax choices are :  atom-one-light  github  googlecode

    input_file_abs=`realpath --relative-to=$my_dir "$input_file"`
    output_file="${input_file%.*}.pdf"
    output_file_abs=`realpath --relative-to=$my_dir  "$output_file"`

    echo "===== printing '$input_file' --> '$output_file' "

    if [ -f /.dockerenv ]; then
        # echo "I'm inside container"
        (cd "$my_dir" ; \
        reveal-md --port $port \
        $input_file_abs \
        --theme "assets/reveal/css/es.css" \
        --template "assets/reveal/es-template.html"  \
        --highlight-theme $syntax  \
        --puppeteer-launch-args="dumpio:true --no-sandbox --disable-setuid-sandbox" \
        --print "$output_file_abs")
    else
        # echo "I'm living in real world!"
        (cd "$my_dir" ; \
        reveal-md --port $port \
        $input_file_abs \
        --theme "assets/reveal/css/es.css" \
        --template "assets/reveal/es-template.html"  \
        --highlight-theme $syntax  \
        --print "$output_file_abs")
    fi
done
