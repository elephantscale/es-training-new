#!/bin/bash
# To generate PDF slides
$ES_HOME/utils/reveal-md/slides-assembler-reveal.sh   0-slide-order.txt $@


# To generate PPTX slides
$ES_HOME/utils/presentations/slides-assembler2.sh   0-slide-order.txt $@
