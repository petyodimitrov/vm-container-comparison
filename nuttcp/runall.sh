#!/bin/bash

echo "running client as transmitter..."
nuttcp -t -vv -i1 nuttcp-server
echo "done!"

echo "running client as receiver..."
nuttcp -r -vv -i1 nuttcp-server
echo "done!"