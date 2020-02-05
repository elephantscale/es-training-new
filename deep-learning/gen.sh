#!/bin/bash

## generate outlines
pandoc Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-2days.md  -o Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-2days.docx

pandoc Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-2days.md  -o Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-2days.pdf

pandoc Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-3days.md  -o Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-3days.docx

pandoc Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-3days.md  -o Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-3days.pdf

$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-assembly-DL-3-days.txt $@
