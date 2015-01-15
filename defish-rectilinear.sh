#!/bin/sh
# Written in the same style as the original under Mac OSX

WIDTH=5184
HEIGHT=3456

if [ ! -d rectilinear ] ; then
    mkdir -p rectilinear
fi

function rectilinear {
    while read filename ; do
        echo Defishing: $filename
        echo "p f0 w${WIDTH}% h${HEIGHT} v115.702 n\"JPEG\"" > defish.pto
        echo "o w${WIDTH} h${HEIGHT} f2 v140 y0 p0 r0 n\"${filename}\"" >> defish.pto
        echo "m i0" >> defish.pto
        /Applications/Hugin/HuginTools/nona -o rectilinear/$filename defish.pto
        rm -f defish.pto
    done
}

find . -name \*.JPG -depth 1 | rectilinear
find . -name \*.jpg -depth 1 | rectilinear
