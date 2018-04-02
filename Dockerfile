FROM golang:alpine
MAINTAINER "Sherif Abdalla <sherif@abdalla.uk>"

LABEL name="terraform"
LABEL version=0.11.4

ENV TERRAFORM_VERSION=0.11.4

RUN apk add --update git bash openssh

ENV TF_DEV=true
ENV TF_RELEASE=true

WORKDIR $GOPATH/src/github.com/hashicorp/terraform
RUN git clone https://github.com/hashicorp/terraform.git ./ && \
    git checkout v${TERRAFORM_VERSION} && \
    /bin/bash scripts/build.sh

WORKDIR $GOPATH
