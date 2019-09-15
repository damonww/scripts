#!/bin/sh

yum update
yum install python-setuptools && easy_install pip
pip install shadowsocks


