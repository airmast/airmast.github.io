#!/bin/bash

# Prerequisites:
#     sudo apt install inkscape icoutils

# SVG to PNG
PNGLIST=''
for SIZE in 16 32 48
do
  inkscape -z logo.svg --export-png=logo${SIZE}.png --export-width=$SIZE
  PNGLIST="$PNGLIST logo${SIZE}.png"
done


# PNG to ICO
icotool -o favicon.ico -c $PNGLIST

# Clean up
rm -rf $PNGLIST
