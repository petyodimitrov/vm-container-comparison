@echo off

vagrant up
vagrant ssh -c "cd /home/testing && ./runall.sh"
vagrant halt -f
vagrant destroy -f

