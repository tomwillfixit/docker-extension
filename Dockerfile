ARG GO_VERSION=1.17

FROM golang:${GO_VERSION}-alpine AS build
RUN apk add --no-cache git
RUN mkdir -p /go/src/github.com/yudai/gotty
WORKDIR /go/src/github.com/yudai/gotty

RUN git init . \
 && git remote add origin "https://github.com/yudai/gotty.git" \
 && git fetch --update-head-ok --depth 1 origin \
 && git checkout -q "v2.0.0-alpha.3"

RUN GO111MODULE=off go install -v github.com/yudai/gotty

FROM alpine:3.16
EXPOSE 8080
ENV TERM=xterm-256color
COPY --from=build /go/bin/gotty /usr/bin/gotty
COPY rootfs/. /

RUN apk add --update --no-cache bash
RUN echo "cd / ; ./menu.sh" > /root/.profile

LABEL org.opencontainers.image.title="helloworld" \
     org.opencontainers.image.description="Docker Desktop Hello World" \
     org.opencontainers.image.vendor="tomwillfixit" \
     com.docker.desktop.extension.api.version="0.1.0"

ENTRYPOINT ["/usr/bin/gotty", "--title-format", "Docker Shell - ID:{{ .Hostname }}", "--permit-write", "nsenter"]
