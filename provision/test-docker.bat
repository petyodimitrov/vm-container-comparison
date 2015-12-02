@echo off
setlocal enabledelayedexpansion 

echo ensure image is downloaded...
docker pull ubuntu:14.04.3

for /L %%n in (1,1,10) do (echo run %%n & echo start: !time! & docker run --rm -t ubuntu:14.04.3 /bin/bash -c "echo testing" & echo end:   !time! & echo .)

endlocal