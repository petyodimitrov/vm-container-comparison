@echo off

vagrant up
vagrant ssh -c "/home/testing/runall.sh"

:: hangs for some reason
::vagrant halt -f
::vagrant destroy -f

