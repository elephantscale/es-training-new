#!/bin/bash


## Generate outline
pandoc ../Machine-Learning-With-Python-outline.md  -o  ../Machine-Learning-With-Python-outline.docx

pandoc ../Machine-Learning-With-Python-outline.md  -o  ../Machine-Learning-With-Python-outline.pdf

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-3-days.txt $@
