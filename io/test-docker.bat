@echo off

docker build --no-cache -t docker-io .
docker run -m=4096m --cpuset-cpus="0,1" --rm -it -v /fio docker-io:latest