#!/bin/sh

IMG_NAME=stead/imaginary-alpine
TMP_DIR=./tmp

if [ -d "$TMP_DIR" ]; then rm -rf $TMP_DIR; fi

mkdir -p $TMP_DIR

docker build -f Dockerfile.1build -t $IMG_NAME:build .
docker create --name extract $IMG_NAME:build
docker cp extract:/tmp/go/bin/imaginary ./tmp/imaginary
docker cp extract:/vips/lib ./tmp/lib
docker rm -f extract
docker build -f Dockerfile.2release --no-cache -t $IMG_NAME:latest .
