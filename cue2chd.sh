#!/usr/bin/env bash

# Converts any BIN/CUE disk images to CHD archives in the directory it is ran in.
# Requires chdman to be in the $PATH

for i in *.cue; do chdman createcd -i "$i" -o "${i%.*}.chd"; done 
