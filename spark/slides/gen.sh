#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## 2 days 
pandoc ../../course-outlines/spark-2days.md  -o ../spark-2days.docx
pandoc ../../course-outlines/spark-2days.md  -o ../spark-2days.pdf

## 3 days 
pandoc ../../course-outlines/spark-3days.md  -o ../spark-3days.docx
pandoc ../../course-outlines/spark-3days.md  -o ../spark-3days.pdf


## 2 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-2-days.txt $@


