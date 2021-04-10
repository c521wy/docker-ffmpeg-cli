FROM alpine

RUN \
sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
apk add --no-cache ffmpeg && \
mkdir -p /work

WORKDIR /work

ENTRYPOINT [ "/usr/bin/ffmpeg" ]
