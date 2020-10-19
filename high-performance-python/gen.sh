#!/bin/bash


## Generate outline
pandoc ../high-performance-python.md -o  ../high-performance-python.docx
pandoc ../high-performance-python.md -o  ../high-performance-python.pdf

## regular outline
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-3-days.txt $@

## Custom for Kim Morello
# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-3-days-kim.txt $@
