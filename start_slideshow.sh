#!/bin/bash

SLIDESHOW_IMG="/tmp/slideshow.jpg"

# Start and restart slideshow as needed.
# -i no yellow box
# -f fullscreen 
# -s auto start slide show
# -w watch open file for changes and reload if needed
# -t scale images to fill screen
# -p 4 use hyper interpolation
until /usr/bin/pqiv -i -f -s -w -t -p 4 $SLIDESHOW_IMG; do
  echo "Slideshow crashed with exit code $?. Restarting..." >&2
  sleep 2
done
