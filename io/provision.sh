#!/bin/bash

TEST_HOME="/home/testing"
USER=`whoami`
sudo mkdir $TEST_HOME > /dev/null 2>&1 && sudo chown $USER $TEST_HOME > /dev/null 2>&1

apt-get update -y && apt-get -qq install -y fio