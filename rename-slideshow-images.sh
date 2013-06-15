#!/bin/bash

IMAGE_DIR=$1

cd $IMAGE_DIR
for f in *; do
    mv "$f" $RANDOM-"$f"
done
