#FROM openkbs/jdk-mvn-py3

ARG VERSION=${VERSION:-1.10}
FROM golang:${VERSION}-alpine

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

WORKDIR /app

ENV SRC_DIR=/go/src/app
RUN mkdir -p ${SRC_DIR}

#### ---- Build it ----
## ref: https://medium.com/travis-on-docker/how-to-dockerize-your-go-golang-app-542af15c27a2
ADD ./app ${SRC_DIR}
RUN cd $SRC_DIR; go build -o myapp; cp myapp /app/

VOLUME /app
WORKDIR /app

ENTRYPOINT ["./myapp"]

