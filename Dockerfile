FROM webratio/nodejs-with-android-sdk

MAINTAINER Julien Renaux <contact@julienrenaux.fr>
RUN mkdir /wphc

ENV HOST 0.0.0.0
EXPOSE 8080

WORKDIR ~

RUN \
    apt-get update && apt-get install -y --no-install-recommends git python make gcc nano build-essential g++ && \
    npm install -g node-gyp && \
    git clone https://github.com/shprink/wordpress-hybrid-client.git && \
    cd wordpress-hybrid-client && \
    git fetch --tags && \
    latestTag=$(git describe --tags `git rev-list --tags --max-count=1`) && \
    git checkout $latestTag
