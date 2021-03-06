#!/bin/bash


for VERSION in `cat boost-versions.txt`
do
  echo "Building $VERSION"
  ./build-docker.sh $VERSION
  ./push-dockerhub.sh $VERSION
  docker rmi zouzias/boost:$VERSION
done
