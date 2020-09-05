#!/usr/bin/env bash

## Generate outline
pandoc ../../course-outlines/AI-for-NLP-Intro.md -o AI-for-NLP-Intro.docx
pandoc ../../course-outlines/AI-for-NLP-Intro.md -o AI-for-NLP-Intro.pdf

## sujee
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh    -d 0-slide-order.txt   $@

## mark
#$ES_HOME/utils/presentations/slides-assembler.sh slide-order.txt  #@
