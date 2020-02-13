#!/bin/bash


## Generate outline
pandoc ../machine-learning-with-python.md -o  ../machine-learning-with-python.docx
pandoc ../machine-learning-with-python.md -o  ../machine-learning-with-python.pdf


$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-3-days.txt $@
