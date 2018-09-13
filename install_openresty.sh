#!/bin/sh

# isntall gcc
yum -y install gcc

# isntall pcre
yum -y install pcre pcre-devel

# install zlib
yum -y install zlib zlib-devel

# install openssl
yum -y install openssl openssl-devel

OPENRESTY_VERSION=1.13.6.1
OPENRESTY_LATEST_RELEASE=openresty-$OPENRESTY_VERSION.tar.gz
OPENRESTY_RELEASE_DIR=openresty-$OPENRESTY_VERSION
tar -zxvf $OPENRESTY_LATEST_RELEASE
cd $OPENRESTY_RELEASE_DIR

# make install openresty
./configure --with-luajit --without-stream_lua_module --with-stream --with-stream_ssl_module
gmake
gmake install
