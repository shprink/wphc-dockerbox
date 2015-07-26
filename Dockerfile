FROM webratio/nodejs-with-android-sdk

MAINTAINER Julien Renaux <contact@julienrenaux.fr>
RUN mkdir /wphc

ENV HOST 0.0.0.0
EXPOSE 8080

WORKDIR ~

RUN \
# Install linux packages
    apt-get update && apt-get install -y --no-install-recommends git python make gcc nano build-essential g++ && \
    npm install -g node-gyp && \
# Cleaning linux packages
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*  && \
# Install WPHC
    git clone https://github.com/shprink/wordpress-hybrid-client.git && \
    cd wordpress-hybrid-client && \
# Checkout the latest version
    git fetch --tags && \
    latestTag=$(git describe --tags `git rev-list --tags --max-count=1`) && \
    git checkout $latestTag
