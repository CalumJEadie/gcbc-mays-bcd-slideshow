#!/bin/bash

IMAGE_DIR="/opt/gcbc-mays-bcd-slideshow/images"
INTERVAL=10

cd $IMAGE_DIR
while true; do
    for i in *; do
        cp $i /tmp/slideshow.jpg;
        echo $i;
        sleep $INTERVAL;
    done;
done;