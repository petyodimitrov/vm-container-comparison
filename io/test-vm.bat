@echo off

vagrant up
vagrant ssh -c ""
vagrant halt -f
vagrant destroy -f

