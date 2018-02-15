#!/usr/bin/env bash

BRANCH=$(git branch |awk '{print $2}')


echo "Building proxy-5330 image"
#docker build --rm -t "jread/proxy-5330/${BRANCH}" .
docker build --rm -t "jread/proxy-5330" . 

