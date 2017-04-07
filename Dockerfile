# Reddit Node.js base image
FROM ubuntu:14.04.4

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y curl software-properties-common python-software-properties && \
    apt-add-repository -y ppa:reddit/ppa && apt-get update

RUN apt-get install -y nodejs git-core

RUN npm install -g yarn@0.21.3

CMD [""]
