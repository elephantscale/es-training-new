#!/bin/bash

## generate outline doc pdf
pandoc ../data-science-on-google-cloud-outline.md  -f markdown -o  ../data-science-on-google-cloud-outline.docx
pandoc ../data-science-on-google-cloud-outline.md  -f markdown  -o ../data-science-on-google-cloud-outline.pdf

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-assembly.txt $@
