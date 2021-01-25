#!/bin/bash


## Generate outline
pandoc ../machine-learning-with-spark.md  -o  ../machine-learning-with-spark.docx
pandoc ../machine-learning-with-spark.md  -o  ../machine-learning-with-spark.pdf


# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-ML-with-spark-python-3-days.txt $@

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-ML-with-spark-python-4-days.txt $@
