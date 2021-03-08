# Future courses folder

## Generation of PDF/DOCX

* We store the outline in the `*.md` format
* To generate the Word outline, do this

```bash

$  ./gen-1.sh   a.md

# $   $ES_HOME/utils/presentations/md2docx.sh <script-name>.md

# or to generate all

$   ./gen-all.sh
```

## Setup

To setup ubuntu machine

```bash

# pandoc
$   conda install pandoc

# set up pdftex
$  sudo apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra

```
