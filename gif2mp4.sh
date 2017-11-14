#!/bin/bash

#Script to convert animated GIF to MP4 and loop it 3 times...

GIF=*.gif

for f in $GIF
do
    ffmpeg -i $f -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" temp.mp4
    for i in {1..3}
    do 
        printf "file '%s'\n" temp.mp4 >> list.txt
    done
    output=${f%".gif"}
    ffmpeg -f concat -i list.txt -c copy $output.mp4
    rm temp.mp4 && rm list.txt
done
