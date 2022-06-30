#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## 5 half days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-JPMC.txt $@

