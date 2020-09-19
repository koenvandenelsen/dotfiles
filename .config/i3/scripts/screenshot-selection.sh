#!/usr/bin/env bash

filename="$(date +%Y%m%d%H%M%S).png"

maim -s | convert - \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage ~/screenshots/$filename
xclip -selection clipboard -t image/png < ~/screenshots/$filename