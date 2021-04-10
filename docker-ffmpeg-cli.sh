#! /bin/sh

docker run -it --rm \
    -v $(pwd):/work \
    registry.cn-beijing.aliyuncs.com/c521wy/ffmpeg-cli \
    $@