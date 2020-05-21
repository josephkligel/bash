#!/bin/bash
git config --global credential.helper 'cache --timeout 7200'

cd /home/$USER/bin; bash gitPush
cd /home/$USER/cv; bash gitPush
cd /home/$USER/python_programs; bash gitPush
cd /home/$USER/c_programs; bash gitPush
cd /home/$USER/node; bash gitPush
cd /home/$USER/config; bash gitPush

cd /home/$USER/Github/Programmapedia; bash gitPush
cd /home/$USER/Github/budgetCrud; bash gitPush
cd /home/$USER/Github/blog; bash gitPush
cd /home/$USER/Github/Wiki-API; bash gitPush
cd /home/$USER/Github/react; bash gitPush
cd /home/$USER/Github/securitynode; bash gitPush
