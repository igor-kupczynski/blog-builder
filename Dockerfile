FROM ubuntu:yakkety-20170104
MAINTAINER Igor Kupczyński

# Required packages
# Jekyll downloads half of the internet and more 
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -qq -y curl hugo jekyll && \
    apt-get clean

# AWS cli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
