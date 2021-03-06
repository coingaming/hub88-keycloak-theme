#!/usr/bin/env sh

app=$1
tag="$2"

if [ "$tag" != "" ]; then
  docker build --rm=false -t "$app" .
  docker tag $app "$app:$tag"
else
  branch=$(git rev-parse --abbrev-ref HEAD | cut -f2 -d"/")
  branch=${branch:-master}

  docker build --rm=false -t "$app:$branch" .
fi
