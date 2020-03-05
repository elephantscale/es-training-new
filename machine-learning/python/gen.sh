#!/bin/bash


## Generate outline
pandoc ../machine-learning-with-python.md -o  ../machine-learning-with-python.docx
pandoc ../machine-learning-with-python.md -o  ../machine-learning-with-python.pdf

pandoc ../machine-learning-with-python-2days.md -o  ../machine-learning-with-python-2days.docx
pandoc ../machine-learning-with-python-2days.md -o  ../machine-learning-with-python-2days.pdf


$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-3-days.txt $@
