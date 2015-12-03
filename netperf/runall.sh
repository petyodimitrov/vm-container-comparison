#!/bin/bash

echo "running TCP test..."
netperf -l 60 -H netperf-server -t TCP_RR -- -r 100,200
echo "done!"

echo "running UDP test..."
netperf -l 60 -H netperf-server -t UDP_RR -- -r 100,200
echo "done!"