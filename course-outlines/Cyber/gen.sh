#!/bin/bash 

for md in *.md
do
    echo $md
    pandoc $md  -o  "${md%\.*}.docx"
    pandoc $md  -o  "${md%\.*}.pdf"

done