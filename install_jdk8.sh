#!/bin/sh

JDK_FOLDER_NAME=jdk1.8.0_131
JDK_FILE_NAME=jdk-8u131-linux-x64.tar.gz
JDK_DOWNLOAD_URL=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

wget $JDK_DOWNLOAD_URL
mkdir /usr/local/java/
tar -zxvf JDK_FILE_NAME -C /usr/local/java/

cat >> /etc/profile <<EOF

export JAVA_HOME=/usr/local/java/jdk1.8.0_131
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
EOF

source /etc/profile
ln -s /usr/local/java/$JDK_FOLDER_NAME/bin/java /usr/bin/java
java -version