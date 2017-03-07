# Reddit Node.js base image
FROM ubuntu:14.04.4

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y curl software-properties-common python-software-properties && \
    apt-add-repository -y ppa:reddit/ppa && apt-get update

# Repo for staging new nodejs version
RUN apt-add-repository -y ppa:reddit/ads && apt-get update

RUN apt-get install -y nodejs=6.9.4-1reddit1~trusty1 git-core

# The npm 2.x that comes with our PPA's nodejs fails to resolve dependencies
# correctly for this project. npm 3.x+ can handle it. Force an upgrade until
# we can re-evaluate packaging (or upgrade to and package nodejs 5.x + npm 3.x).
RUN npm install npm -g

CMD [""]
