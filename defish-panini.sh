#!/bin/sh

WIDTH=5184
HEIGHT=3456

if [ ! -d panini ] ; then
    mkdir -p panini
fi

function panini {
    while read filename ; do
        echo Defishing: $filename
        echo "p f16 w${WIDTH}% h${HEIGHT} v140 n\"JPEG\"" > defish.pto
        echo "o w${WIDTH} h${HEIGHT} f2 v140 y0 p0 r0 n\"${filename}\"" >> defish.pto
        echo "m i0" >> defish.pto
        /Applications/Hugin/HuginTools/nona -o panini/$filename defish.pto
        rm -f defish.pto
    done
}

find . -name \*.JPG -depth 1 | panini
find . -name \*.jpg -depth 1 | panini
