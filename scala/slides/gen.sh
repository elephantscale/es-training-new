#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## 3 days 
# (cd ../../course-outlines; pandoc scala.md  -o ../scala/scala.docx)
# (cd ../../course-outlines; pandoc scala.md  -o ../scala/scala.pdf)


## 3 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-3-days.txt $@

