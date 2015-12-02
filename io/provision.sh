#!/bin/bash

TEST_HOME="/home/testing"
USER=`whoami`
sudo mkdir $TEST_HOME && sudo chown $USER $TEST_HOME > /dev/null 2>&1

apt-get -qq install -y fio

if [ ! -d "${TEST_HOME}/${BENCHMARKS}" ]; then
	echo "provisioning benchmark ${BENCHMARKS}"
	sudo apt-get install wget -y
	wget -q -O "/tmp/${BENCHMARKS}.tar.gz" "http://www.roylongbottom.org.uk/${BENCHMARKS}.tar.gz"
	tar xzvf "/tmp/${BENCHMARKS}.tar.gz" -C $TEST_HOME
	rm -f "/tmp/${BENCHMARKS}.tar.gz"
fi