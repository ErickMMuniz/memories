FROM ubuntu:latest

WORKDIR /app

RUN  apt-get update \
  && apt-get install -y wget \
  && apt install -y git


ARG HUGO_VERSION=0.108.0
RUN wget -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz && \
     tar xzf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz && \
     mv hugo /usr/bin/hugo && \
     rm -rf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz


CMD ["bash"]
