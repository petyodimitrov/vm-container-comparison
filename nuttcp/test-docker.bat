@echo off

docker build --no-cache -t docker-nuttcp .

:: start server
docker run -m=2048m --cpuset-cpus="0,1" --name nuttcp-server -d docker-nuttcp:latest nuttcp -S --nofork

:: run client tests
docker run -m=2048m --cpuset-cpus="0,1" --rm --name nuttcp-client --link nuttcp-server -t docker-nuttcp:latest /runall.sh

:: stop & remove server
docker rm -f nuttcp-server