#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

(cd ../../course-outlines; pandoc cassandra-outline-3-days.md  -o ../cassandra/cassandra-outline.docx)
(cd ../../course-outlines;  pandoc cassandra-outline-3-days.md  -o ../cassandra/cassandra-outline-3-days.pdf)

## -d will delete existing files in assembly  folder
## 3 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-3-days.txt $@

