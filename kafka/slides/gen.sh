#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

pandoc ../Intro-to-Apache-Kafka-outline-4days.md  -o ../Intro-to-Apache-Kafka-outline-4days.docx
pandoc ../Intro-to-Apache-Kafka-outline-4days.md  -o ../Intro-to-Apache-Kafka-outline-4days.pdf

## -d will delete existing files in assembly  folder
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh   -d 0-slide-assembly-4-days.txt $@
# ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-2-days.txt $@


