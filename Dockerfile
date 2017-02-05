FROM ubuntu:yakkety-20170104
MAINTAINER Igor Kupczyński
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -qq -y hugo && \
    apt-get clean

