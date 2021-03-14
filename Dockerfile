FROM golang:1.15.10

ARG DUMB_INIT_VERSION=1.2.2

RUN GO111MODULE=on go get github.com/tcnksm/ghr

RUN curl -L -o /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64 \
  && chmod +x /usr/local/bin/dumb-init

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["dumb-init", "--", "/entrypoint.sh"]
