#!/bin/bash
ffmpeg -y -i "input.mp4" -flags +bitexact -vcodec libx264 -profile:v baseline -level 3.0 -s 480x272 -r 29.97 -b:v 384k -acodec aac -b:a 96k -ar 48000 -f psp -strict -2 "output.m4v"
