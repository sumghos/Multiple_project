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

echo -e $BIYellow"Enter the Group Name \n"NORMAL
read grpname
echo -e $BIYellow" Enter the Group ID \n "NORMAL
read grpid
cat Group_Add_try.yaml | sed "s/grpnme/$grpname/g" | sed "s/gidnum/grpid/g" > Group_Add.yaml
ansible-playbook Group_Add.yaml -K