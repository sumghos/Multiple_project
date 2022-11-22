#!/bin/bash
clear
#"This script is created by Shikhar Verma"
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
NORMAL="\033[0;39m"

echo -e $BIBlue"Enter The User name need to Remove "
read usernme
cat userdel_try.yaml | sed "s/usernme/$usernme/g" > userdel.yaml
ansiable-playbook userdel.yaml -k
sleep 10