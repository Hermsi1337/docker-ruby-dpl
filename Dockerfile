ARG     RUBY_VERSION="latest"
FROM    ruby:${RUBY_VERSION}

ARG     DPL_VERSION=">= 1.10.15"
ENV     DPL_VERSION="${DPL_VERSION}"

RUN     set -x && \
        apt-get -qq update && \
        apt-get -qq install ruby-dev && \
        gem install dpl -v "${DPL_VERSION}" && \
        apt-get -qq autoremove && \
        apt-get -qq autoclean && \
        rm -rf /tmp/* /var/cache/* /var/apt/lists/*
