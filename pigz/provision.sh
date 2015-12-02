#!/bin/bash

TEST_HOME="/home/testing"
USER=`whoami`
sudo mkdir $TEST_HOME > /dev/null 2>&1 && sudo chown $USER $TEST_HOME > /dev/null 2>&1

sudo apt-get update && apt-get install pigz -y

# store file in memory (file needs to be manually provided in common/ directory)
RAMFS=/mnt/ram
if [ ! -d "$RAMFS" ]; then
	echo "load test file in memory..."
	sudo mkdir "$RAMFS"
	sudo mount -t ramfs ram "$RAMFS"
	sudo cp /common/enwiki-20151102-stub-meta-current26.xml "$RAMFS"
	echo "loaded"
fi
