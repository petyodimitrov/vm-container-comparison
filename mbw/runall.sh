#!/bin/bash

cd "$(dirname "$0")"
cd mbw-1.4/

echo "running tests..."
./mbw -b 4096 1024 -n 10