#!/bin/sh

workspace_dir=$1
output_dir=$2

artifact_dir="$workspace_dir/libffi-$VERSION"

curl -O ftp://sourceware.org/pub/libffi/libffi-$VERSION.tar.gz
tar zxf libffi-$VERSION.tar.gz

cd libffi-$VERSION
env CFLAGS=-fPIC ./configure --enable-static --disable-shared --prefix=$artifact_dir
make
make install
cd $artifact_dir
mv lib/libffi-$VERSION/include .
rm -rf lib/libffi-$VERSION
mkdir -p $output_dir/$STACK
tar czf $output_dir/$STACK/libffi-$VERSION.tgz *
