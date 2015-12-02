@echo off
setlocal enabledelayedexpansion 

:: ensure base image is present (otherwise first run would be much slower)

for /L %%n in (1,1,10) do (echo run %%n & echo up start:   !time! & vagrant up & echo up end:     !time! & echo halt start: !time! & vagrant halt -f & echo halt end:   !time! & vagrant destroy -f & echo .)

endlocal