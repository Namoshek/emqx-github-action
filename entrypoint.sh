#!/bin/sh

VERSION=$1
PORT=$2
PORT_WS=$3

docker run --name emqx --publish $PORT:1883 --publish $PORT_WS:8083 --detach emqx/emqx:$VERSION
