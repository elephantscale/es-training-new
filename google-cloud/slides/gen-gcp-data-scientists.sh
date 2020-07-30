#!/bin/bash

## to generate pdf
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf


## generate outline doc pdf
pandoc ../google-cloud-for-data-scientists.md  -o  ../google-cloud-for-data-scientists.docx
pandoc ../google-cloud-for-data-scientists-2days.md  -o  ../google-cloud-for-data-scientists-2days.docx

pandoc ../google-cloud-for-data-scientists.md   -o ../google-cloud-for-data-scientists.pdf
pandoc ../google-cloud-for-data-scientists-2days.md  -o  ../google-cloud-for-data-scientists-2days.pdf

## -d will delete existing files in assembly  folder
#$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d     0-slide-assembly-gcp-for-data-scientists-4days.txt  $@

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d     0-slide-assembly-gcp-for-data-scientists-2days.txt  $@
