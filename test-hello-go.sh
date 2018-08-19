#!/bin/bash -x

TEST_METHOD_DEFAULT=1

TEST_METHOD=${1:-$TEST_METHOD_DEFAULT}

HOST_PORT=18000

#if [ ${TEST_METHOD} -eq 0 ]; then
#    echo "## Way-1: manually one-by-one build and run go script ...."
#    IMAGE=openkbs/go-app-docker
#    cp example/hello.go ./app/
#    #docker run -it --rm --name some-go-app-docker -v $PWD/app:/app ${IMAGE} /usr/local/go/bin/go build -o myapp
#    docker run -it --rm --name some-go-app-docker -v $PWD/app:/app ${IMAGE} echo `pwd`
#    docker run -it --rm --name some-go-app-docker -v $PWD/app:/app -p ${HOST_PORT}:8000 ${IMAGE} /app/myapp
#    #firefox 127.0.0.1:${HOST_PORT} &
#    exit 0
#fi


if [ ${TEST_METHOD} -eq 1 ]; then
    echo "## Way-2 (using docker-compose):"
    cp example/hello.go ./app/
    echo "... Make sure docker-compose.yaml file's Host Port is ${HOST_PORT} to work ..."
    cat docker-compose.yml|grep 8000
    docker-compose up -d
    firefox 127.0.0.1:${HOST_PORT} &
    exit 0
fi

if [ ${TEST_METHOD} -eq 2 ]; then
    echo "## Way-3 (using script ./run.sh):"
    cp example/hello.go ./app/
    echo "... Make sure .env file's Host Port is ${HOST_PORT} to work ..."
    cat .env|grep 8000
    ./run.sh
    firefox 127.0.0.1:${HOST_PORT} &
    exit 0
fi


