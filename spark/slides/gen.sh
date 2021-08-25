#!/usr/bin/env bash

## to generate pdf 
##	./gen.sh  pdf
## to generate pptx
##	./gen.sh  pptx
## to generate pptx and pdf
##	./gen.sh  pptx pdf

## 2 days 
(cd ../../course-outlines; pandoc spark3-2days-outline.md  -o ../spark/spark3-2days-outline.docx)
(cd ../../course-outlines; pandoc spark3-2days-outline.md  -o ../spark/spark3-2days-outline.pdf)

## 3 days 
(cd ../../course-outlines; pandoc spark3-3days-outline.md  -o ../spark/spark3-3days-outline.docx)
(cd ../../course-outlines; pandoc spark3-3days-outline.md  -o ../spark/spark3-3days-outline.pdf)


## 2 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-2-days.txt $@

## 3 days
#$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-assembly-3-days.txt $@


## if generating pdf, combine
## Now this is done by slide-assembly script

# if [[ "$*" == *'pdf'* ]] ;  then
#     echo "Generating a combined PDF : assembly.out/pdf/z-combined.pdf  ..."
#     cd assembly.out/pdf && $ES_HOME/utils/reveal-md/pdf-combine.sh  *.pdf
# fi