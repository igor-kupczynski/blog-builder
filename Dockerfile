FROM ubuntu:impish
MAINTAINER Igor Kupczyński

# Required packages
# Jekyll downloads half of the internet and more 
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl hugo jekyll python-is-python3 python3-venv && \
    apt-get clean

# AWS cli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
