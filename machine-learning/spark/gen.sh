#!/bin/bash


## Generate outline
pandoc ../Machine-Learning-With-Apache-Spark-outline.md  -o  ../Machine-Learning-With-Apache-Spark-outline.docx

pandoc ../Machine-Learning-With-Apache-Spark-outline.md  -o  ../Machine-Learning-With-Apache-Spark-outline.pdf

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-order-ML-with-spark-python-3-days.txt $@
