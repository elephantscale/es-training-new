#!/bin/bash

## generate outlines
pandoc  deep-learning-with-tensorflow-keras-2days.md -o deep-learning-with-tensorflow-keras-2days.docx
pandoc  deep-learning-with-tensorflow-keras-2days.md -o deep-learning-with-tensorflow-keras-2days.pdf


pandoc deep-learning-with-tensorflow-keras-3days.md  -o deep-learning-with-tensorflow-keras-3days.docx
pandoc deep-learning-with-tensorflow-keras-3days.md  -o deep-learning-with-tensorflow-keras-3days.pdf


$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d    0-slide-assembly-DL-tf2-3-days.txt $@
