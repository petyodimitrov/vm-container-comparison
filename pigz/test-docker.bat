@echo off

:: build image
docker build --no-cache -t docker-pigz .

:: create container
:: * must be privileged to mount file to memory
:: * must use limited cpu and memory
:: * uses host /commons dir
docker run --privileged -m=4096m --cpuset-cpus="0,1" --rm -it -v=/common:/common:ro docker-pigz:latest /bin/bash -c "./provision.sh && ./runall.sh"