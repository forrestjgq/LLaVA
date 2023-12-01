url=dockerhub.deepglint.com/lse/llava
tag=app-0.1

docker run -it --rm --runtime=nvidia  \
    --shm-size='20g' --ipc=host --privileged \
    --ulimit memlock=-1 --ulimit core=-1 --security-opt seccomp=unconfined \
    -v /mnt:/mnt:rw \
    -v /data0:/data0:rw \
    -v $HOME:$HOME:rw \
    $url:$tag \
    bash