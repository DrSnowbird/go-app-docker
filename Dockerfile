#FROM openkbs/jdk-mvn-py3

ARG VERSION=${VERSION:-1.10}
FROM golang:${VERSION}-alpine

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

## reference: https://blog.codeship.com/building-minimal-docker-containers-for-go-applications/

RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]

