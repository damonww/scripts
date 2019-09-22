#!/bin/sh

wget 'https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm'
rpm -Uvh mysql57-community-release-el7-11.noarch.rpm
yum update
yum install mysql-community-server -y

service mysqld start

grep 'temporary password' /var/log/mysqld.log >> passwd.log

# then change password: SET PASSWORD = PASSWORD('your_new_password');
