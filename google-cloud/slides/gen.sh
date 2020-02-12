#!/bin/bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## generate outline doc pdf
pandoc ../google-cloud-for-data-scientists-outline.md  -o  ../google-cloud-for-data-scientists-outline.docx

pandoc ../google-cloud-for-data-scientists-outline.md   -o ../google-cloud-for-data-scientists-outline.pdf

## -d will delete existing files in assembly  folder
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d     0-slide-assembly.txt $@

