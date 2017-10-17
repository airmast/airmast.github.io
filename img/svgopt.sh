#!/bin/bash

# Prerequisites:
#     sudo npm install -g svgo

find . -iname '*.svg' -exec svgo -i "{}" \;
