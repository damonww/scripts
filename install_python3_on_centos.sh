#!/bin/sh

# install dependencies
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make
# download latest version of python
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz
# uncompress python tar ball
tar xvJf Python-3.6.4.tar.xz -C /usr/local/src/
cd /usr/local/src/Python-3.6.4/
# install python3 from source codes
./configure --prefix=/usr/local/python3
make all
make install
make clean

ln -s /usr/local/python3/bin/python3 /usr/bin/python3
