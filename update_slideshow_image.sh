#!/bin/bash

IMAGE_DIR="/opt/gcbc-mays-bcd-slideshow/images"
INTERVAL=10
SLIDESHOW_IMG="/tmp/slideshow.jpg"

cd $IMAGE_DIR
while true; do
    for i in *; do
        cp $i $SLIDESHOW_IMG;
        echo $i;
        sleep $INTERVAL;
    done;
done;