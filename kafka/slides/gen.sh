#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

#pandoc ../data-science-on-google-cloud-outline.md  -f markdown -o  ../data-science-on-google-cloud-outline.docx
#pandoc ../data-science-on-google-cloud-outline.md  -f markdown  -o ../data-science-on-google-cloud-outline.pdf

## -d will delete existing files in assembly  folder
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh   0-slide-assembly-4-days.txt $@
#$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-2-days.txt $@


