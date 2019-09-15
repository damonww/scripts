#!/bin/sh

yum update
yum install python-setuptools && easy_install pip
pip install shadowsocks

# modify ssserver port and password in shadowsocks.json
cp shadowsocks.json /etc/shadowsocks.json

cp shadowsocks.service /usr/lib/systemd/system/

systemctl enable shadowsocks
systemctl start shadowsocks

