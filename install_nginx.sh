#!/bin/sh

# isntall gcc
yum -y install gcc

# isntall pcre
yum -y install pcre pcre-devel

# install zlib
yum -y install zlib zlib-devel

# install openssl
yum -y install openssl openssl-devel

# download nginx-release
NGX_VERSION=1.13.8
NGX_LATEST_RELEASE=release-$NGX_VERSION.tar.gz
NGX_RELEASE_DIR=nginx-release-$NGX_VERSION
wget https://github.com/nginx/nginx/archive/$NGX_LATEST_RELEASE
tar -zxvf $NGX_LATEST_RELEASE
cd $NGX_RELEASE_DIR

# make install nginx
./auto/configure --prefix=/usr/local/nginx/ --with-http_ssl_module --with-http_v2_module
make
make install
