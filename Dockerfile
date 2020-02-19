FROM golang:alpine
MAINTAINER "Anders Flyndersøe <anders@flynder.dk>"

LABEL name="terraform"
LABEL version=latest

ENV TERRAFORM_VERSION=latest

RUN apk add --update git bash openssh

ENV TF_DEV=true
ENV TF_RELEASE=true

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh

WORKDIR $GOPATH
