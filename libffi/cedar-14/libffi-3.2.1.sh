#!/bin/bash

docker run -v `pwd`/builds:/tmp/output -e VERSION=3.2.1 -e STACK=cedar-14 hone/libffi-builder:cedar-14
