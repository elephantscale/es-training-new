#!/bin/bash
# To generate slides
#$ES_HOME/utils/presentations/slides-assembler.sh   slide-order.txt

## outlines
(cd ../../course-outlines; pandoc kubernetes-with-docker-outline-5-days.md  -o ../kubernetes/kubernetes-with-docker-outline-5-days.pdf)
(cd ../../course-outlines; pandoc kubernetes-with-docker-outline-5-days.md  -o ../kubernetes/kubernetes-with-docker-outline-5-days.docx)

# 3 days
# $ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-order-3-days.txt $@

# 5 days
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh  -d   0-slide-order-docker-kube-5-days.txt $@
