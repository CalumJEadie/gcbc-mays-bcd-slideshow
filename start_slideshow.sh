#!/bin/bash

SLIDESHOW_IMG="/tmp/slideshow.jpg"

# Start and restart slideshow as needed.
until /usr/bin/pqiv -i -f -s -w $SLIDESHOW_IMG; do
  echo "Slideshow crashed with exit code $?. Restarting..." >&2
  sleep 2
done