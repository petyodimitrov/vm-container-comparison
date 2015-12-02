#!/bin/bash

cd "$(dirname "$0")"

echo "running tests..."
sudo fio test.fio
echo "done!"

echo "deleting test file..."
rm -f /tmp/test-file