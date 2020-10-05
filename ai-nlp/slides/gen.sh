#!/usr/bin/env bash

### ======  regular ============================================
#pandoc ../../course-outlines/AI-for-NLP-Intro.md -o AI-for-NLP-Intro.docx
#pandoc ../../course-outlines/AI-for-NLP-Intro.md -o AI-for-NLP-Intro.pdf
#$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh    -d 0-slide-order.txt   $@
### ======  end regular ============================================


### ======= donis =======
pandoc   ../../course-outlines/donis-marshal/text-analytics-using-machine-learning.md    -o text-analytics-using-machine-learning.pdf
pandoc   ../../course-outlines/donis-marshal/text-analytics-using-machine-learning.md    -o text-analytics-using-machine-learning.docx
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh    -d 0-slide-order-donis-half-day.txt   $@
### ======= end donis =======