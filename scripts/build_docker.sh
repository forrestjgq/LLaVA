#!/bin/bash
set -ex
root=$(dirname $(dirname $(realpath $0)))
url=dockerhub.deepglint.com/lse/llava
tag=app-0.1
proxy=""

pushd $root
options=""
# options="$options --progress=plain"
if [ ! -z $proxy ]; then
    options="$options --build-arg proxy=$proxy"
fi
cmd="docker build $options -t $url:$tag ."
echo $cmd
DOCKER_BUILDKIT=1 $cmd
popd