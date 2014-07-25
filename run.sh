#!/bin/sh

docker run -v `pwd`/builds:/tmp/output -e VERSION=3.1 hone/libffi-builder:cedar-14
