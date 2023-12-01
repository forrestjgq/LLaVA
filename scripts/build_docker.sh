#!/bin/bash
set -ex

root=$(dirname $(dirname $(realpath $0)))
url=dockerhub.deepglint.com/lse/llava
tag=app-0.1

pushd $root
options=""
# options="--progress=plain"
DOCKER_BUILDKIT=1 docker build \
 $options \
 --build-arg proxy="122.97.199.83:17892" \
 -t $url:$tag \
 .
popd