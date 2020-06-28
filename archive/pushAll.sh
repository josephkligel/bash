#!/bin/bash
git config --global credential.helper 'cache --timeout 7200'

cd /home/$USER/Github/bin; bash gitPush
cd /home/$USER/Github/cv; bash gitPush
cd /home/$USER/Github/python_programs; bash gitPush
cd /home/$USER/Github/c_programs; bash gitPush
cd /home/$USER/Github/node; bash gitPush
cd /home/$USER/Github/config; bash gitPush
cd /home/$USER/Github/electron; bash gitPush
cd /home/$USER/Github/practice_python; bash gitPush
cd /home/$USER/Github/GamesJS; bash gitPush
cd /home/$USER/Github/AI_py; bash gitPush
cd /home/$USER/Github/cpp_programs; bash gitPush

cd /home/$USER/Github/Programmapedia; bash gitPush
cd /home/$USER/Github/budgetCrud; bash gitPush
cd /home/$USER/Github/blog; bash gitPush
cd /home/$USER/Github/Wiki-API; bash gitPush
cd /home/$USER/Github/react; bash gitPush
cd /home/$USER/Github/securitynode; bash gitPush
