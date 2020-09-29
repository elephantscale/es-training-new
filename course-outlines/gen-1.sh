#!/bin/bash 

if [ "$#" -lt 1 ] ; then
	echo "Usage: $0 <md files>"
	exit 1
fi

for md in $@
do
    echo $md
    pandoc $md  -o  "${md%\.*}.docx"
    pandoc $md  -o  "${md%\.*}.pdf"

done
