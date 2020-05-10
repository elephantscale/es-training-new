#!/bin/bash

for f in $(find . -type f -name "*.gif")
do
    input_gif=$f
    output_mp4="${input_gif%.*}.mp4"

    if [ ! -f "$output_mp4" ]; then
	   echo "$input_gif  -->  $output_mp4"
       ffmpeg -i $input_gif -y -loglevel quiet -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" $output_mp4
    fi
done
