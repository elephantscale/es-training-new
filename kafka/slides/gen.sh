#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## 2 days 
pandoc ../../course-outlines/kafka-intro-2days-outline.md  -o ../kafka-intro-2days-outline.docx
pandoc ../../course-outlines/kafka-intro-2days-outline.md  -o ../kafka-intro-2days-outline.pdf

## 3 days 
pandoc ../kafka-intro-3days-outline.md  -o ../kafka-intro-3days-outline.docx
pandoc ../kafka-intro-3days-outline.md  -o ../kafka-intro-3days-outline.pdf


## 4 days
pandoc ../kafka-intro-4days-outline.md  -o ../kafka-intro-4days-outline.docx
pandoc ../kafka-intro-4days-outline.md  -o ../kafka-intro-4days-outline.pdf

## -d will delete existing files in assembly  folder
## 4 days
# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh   -d 0-slide-assembly-4-days.txt $@

## 3 days
# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-3-days.txt $@

## 2 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-2-days.txt $@


