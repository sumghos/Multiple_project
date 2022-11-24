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

echo -e $BICyan"Enter the user's name \n "NORMAL
read usrnme
echo -e $BICyan"Enter the New Password \n"NORMAL
python -c "from passlib.hash import sha512_crypt; import getpass ; print (sha512_crypt.using(rounds=5000).hash(getpass.getpass()))"
echo -e $BICyan"Copy and paste the encrypted password below & press CTRL + D "NORMAL
cat > /tmp/pass
psw=/tmp/pass
cat Password_reset_try.yaml | sed "s/usrname/$usrnme/g" | sed "s~psw~$psw~g" > Password_reset.yaml
ansible-plaboook Password_reset.yaml -K
sleep 15


