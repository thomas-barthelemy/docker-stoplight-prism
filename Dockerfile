# WE Bridge Stoplight.io Prism
#
# VERSION 0.1.2

FROM gliderlabs/alpine:3.3
MAINTAINER Thomas Barthelemy <thomas.barthelemy@webridge.asia>

RUN apk-install wget curl tar

RUN wget -O /tmp/prism.tar.gz https://github.com/stoplightio/prism/releases/download/v0.1.2/prism_linux_64.tar.gz \
    && tar -xvf /tmp/prism.tar.gz -C /usr/bin/ --strip-components=1 \
    && rm -rf /tmp/*

ENTRYPOINT ["prism"]
