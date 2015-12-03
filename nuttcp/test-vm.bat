@echo off

vagrant up

:: start server (uses nohup to prevent interrupting when vagrant's ssh session ends)
vagrant ssh -c "nohup nuttcp -S" server

:: run client tests
vagrant ssh -c "./runall.sh" client

vagrant halt -f
vagrant destroy -f

