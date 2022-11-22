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
echo -e $BIGreen"Enter The User Name Needs To Be Created \n"$NORMAL
read usrnme
echo -e $BIGreen"Enter User ID Which Needs To Created \n"$NORMAL
read usrid
echo -e $BIGreen"Enter Primary Group Name or Group ID \n "$NORMAL
read pgrpnme
echo -e $BIGreen"Enter Seconday Group name separted by , if there are multiple secondary groups \n"$NORMAL
read sgrpnme
echo -e $BIGreen"Enter comments for User"$NORMAL
read cmmts
echo -e $BIGreen"Enter The Home directory location "
read hme
cat usercr_try.yml | sed "s/usrnme/$usrnme/g" | sed "s/usrid/$usrid/g" | sed "s/pgrpnme/$pgrpnme/g" | sed "s/sgrpnme/$sgrpnme/g" | sed "s/cmmts/$cmmts/g" | sed "s~hme~$hme~g" > usercr1.yml
#ansible-playbook usercr1.yml -K -C
#ansible webservers -m command -a "id $usernme"