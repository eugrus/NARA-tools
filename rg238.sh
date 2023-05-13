#!/bin/bash
for n in $(seq -f "%04g" 1 $2); do
    wget "https://s3.amazonaws.com/NARAprodstorage/lz/dc-metro/rg-238/${1::-4}/$(echo ${1} | tr '-' '_')/$1-$n.jpg" -O "$1.$n.jpg"
done
img2pdf $(ls $1.*.jpg|sort -V) --output $1.pdf
