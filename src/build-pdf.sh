#!/bin/bash

# Prerequisites:
#     sudo apt install inkscape texlive texlive-xetex

TITLE="CamAdapter"
SUBTITLE="Assembly Manual"
VERSION="0.1"
YEAR=$(date +%Y)
mkdir -p tmp-pdf

sed -e "s/#{title}/$TITLE/" -e "s/#{subtitle}/$SUBTITLE/" -e "s/#{year}/$YEAR/" ../img/title.svg > tmp-pdf/title.svg

cd tmp-pdf
inkscape -z -A title.pdf title.svg
inkscape -z -P title.ps title.svg
cd ..

#rm -rf tmp-pdf
