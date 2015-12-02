#!/bin/bash

cd "$(dirname "$0")"
cd memory_benchmarks/bin_32_and_64

echo "running tests..."
echo | ./randmem64
