#!/bin/bash

echo "ensure image is downloaded..."
docker pull ubuntu:14.04.3

for i in {1..10}; do time (docker run --rm -t ubuntu:14.04.3 /bin/bash -c "echo test"); done