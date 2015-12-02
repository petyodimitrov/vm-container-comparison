#!/bin/bash

echo "running tests..."
for i in {1..10}; do time (pigz -2kc /mnt/ram/enwiki-20151102-stub-meta-current26.xml > /dev/null); done

