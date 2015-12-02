@echo off

vagrant up
vagrant ssh -c "/home/testing/runall.sh"
vagrant halt -f
vagrant destroy -f

