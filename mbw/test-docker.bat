@echo off

:: build image
docker build --no-cache -t docker-mbw .

:: create container
docker run -m=4096m --cpuset-cpus="0,1" --rm -it docker-mbw:latest