#!/bin/bash
ffmpeg -i "$1" -vf vidstabdetect=shakiness=5:result="${1@Q}.trf" -f null -
ffmpeg -i "$1" -vf vidstabtransform=crop="black":optzoom=0:input="${1@Q}.trf" "stabilized-$1"
