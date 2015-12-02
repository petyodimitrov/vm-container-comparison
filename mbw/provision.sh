#!/bin/bash

TEST_HOME="/home/testing"
BENCHMARKS="mbw"

USER=`whoami`
sudo mkdir -p $TEST_HOME && sudo chown $USER $TEST_HOME > /dev/null 2>&1

if [ ! -d "${TEST_HOME}/${BENCHMARKS}" ]; then
	echo "provisioning benchmark ${BENCHMARKS}"
	sudo apt-get install wget -y
	wget -q -O "/tmp/${BENCHMARKS}.tar.gz" "https://github.com/raas/${BENCHMARKS}/archive/v1.4.tar.gz"
	tar xzvf "/tmp/${BENCHMARKS}.tar.gz" -C $TEST_HOME
	rm -f "/tmp/${BENCHMARKS}.tar.gz"
	make -C $TEST_HOME/mbw-1.4
fi