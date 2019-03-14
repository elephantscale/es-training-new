#!/bin/bash

themes="black simple"
highlight_themes="github atom-one-light atom-one-dark googlecode"

#highlight_themes="zenburn  github atom-one-light atom-one-dark googlecode tomorrow-night-blue tomorrow-night-bright tomorrow-night solarized-dark "

input_file=sample.md
output_dir=out-pdf
rm -rf $output_dir
mkdir -p $output_dir

for theme in $themes
do
    for highlight_theme in $highlight_themes
    do
        #echo "printing $md_file --> "  "${md_file%.*}-$theme.pdf"
        output_file="$output_dir/${input_file%.*}__$theme-$highlight_theme.pdf"

        echo "======== $theme,  $highlight_theme ========"

        reveal-md --port 1949 $input_file \
                  --theme $theme \
                  --highlight-theme $highlight_theme  \
                  --print $output_file
    done
done
