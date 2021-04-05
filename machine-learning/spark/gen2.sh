#!/bin/bash


## Generate outline
pandoc ../../course-outlines/machine-learning-with-spark-visa.md  -o  ../machine-learning-with-spark.docx
pandoc ../../course-outlines/machine-learning-with-spark-visa.md  -o  ../machine-learning-with-spark.pdf


$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-ML-with-spark-python-4-days-visa.txt $@
