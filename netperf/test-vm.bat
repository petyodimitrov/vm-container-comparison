@echo off

vagrant up

vagrant ssh -c "./runall.sh" client

vagrant halt -f
vagrant destroy -f