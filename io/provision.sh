#!/bin/bash

TEST_HOME="/home/testing"
USER=`whoami`
sudo mkdir -p $TEST_HOME && sudo chown $USER $TEST_HOME > /dev/null 2>&1

sudo apt-get -qq update && sudo apt-get install -y fio