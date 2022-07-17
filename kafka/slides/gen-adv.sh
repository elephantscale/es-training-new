#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## ================ ADVANCED ==========
## Adv 2 days
(cd ../../course-outlines; pandoc kafka-advanced-2-days-outline.md  -o ../kafka/kafka-advanced-2-days-outline.pdf)

# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-advanced-2-days.txt $@

## Triveratech
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-advanced-2-days-triveratech.txt $@
