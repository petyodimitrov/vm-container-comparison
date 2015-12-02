@echo off

docker build --no-cache -t docker-mem .
docker run -m=4096m --cpuset-cpus="0,1" --rm -it docker-mem:latest