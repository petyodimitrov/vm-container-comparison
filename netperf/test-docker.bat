@echo off

docker build --no-cache -t docker-netperf .

:: start server
docker run -m=2048m --cpuset-cpus="0,1" --name netperf-server -d docker-netperf:latest

:: run client
docker run -m=2048m --cpuset-cpus="0,1" --rm --name netperf-client --link netperf-server -t docker-netperf:latest /runall.sh

:: stop & remove server
docker rm -f netperf-server