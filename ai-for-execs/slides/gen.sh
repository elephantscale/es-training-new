#!/bin/bash

## generate outlines
#pandoc deep-learning-with-tensorflow-keras-3days.md  -o deep-learning-with-tensorflow-keras-3days.docx
#pandoc deep-learning-with-tensorflow-keras-3days.md  -o deep-learning-with-tensorflow-keras-3days.pdf


$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   slide-order.txt  $@
