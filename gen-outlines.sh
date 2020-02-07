#!/bin/bash 

outlines="
kafka/Intro-to-Apache-Kafka-outline-3days.md 
kafka/Intro-to-Apache-Kafka-outline-4days.md
data-science-gcp/google-cloud-for-data-scientists-outline.md
deep-learning/Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-2days.md
deep-learning/Intro-to-Deep-Learning-With-TensorFlow-and-Keras-outline-3days.md
"

output_dir="outlines.out"
mkdir -p $output_dir
rm -f $output_dir/*

while read -r outline ; do 
    #echo '----'
    #echo $outline 
    
    
    input_file=$outline 
    
    if [ -f "$input_file" ] ; then
        a=$(basename $input_file)
        output_file_docx="${a%\.*}.docx"
        output_file_pdf="${a%\.*}.pdf"
        
        input_dir=$(dirname $input_file)
        
        echo "$input_file --> $input_dir/$output_file_docx"
        pandoc $input_file  -o  "$input_dir/$output_file_docx"
        
        echo "$input_file --> $input_dir/$output_file_pdf"
        pandoc $input_file  -o  "$input_dir/$output_file_pdf"
        
        echo "$input_file --> $output_dir/$output_file_docx"
        pandoc $input_file  -o  "$output_dir/$output_file_docx"
        
        echo "$input_file --> $output_dir/$output_file_pdf"
        pandoc $input_file  -o  "$output_dir/$output_file_pdf"
    fi
done <<< "$outlines"

