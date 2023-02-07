#!/usr/bin/env bash

# made by cyberxaman

# install all the requirements
requirement(){
    if [ "$(uname)" == "Darwin" ]; then
        # Mac OS
        brew install python
        brew install wget
        brew install tor
        brew install python3
        pip3 install requests --upgrade
        pip3 install requests[socks]
        pip3 install stem
        pip3 install instagram-py
        wget -O ~/instapy-config.json "https://git.io/v5DGy"
    elif [ "$(uname -s)" == "Linux" ]; then
        # Linux
        apt-get install python3
        apt-get install wget -y
        apt-get install tor -y
        apt-get install python3-pip
        pip3 install requests --upgrade
        pip3 install requests[socks]
        pip3 install stem
        pip3 install instagram-py
        wget -O ~/instapy-config.json "https://git.io/v5DGy"
    elif [ "$(uname -o)" == "Msys" ]; then
        # Windows
        echo "Replace the commands with the appropriate package management commands for Windows."
    fi
}

requirement

# make a banner for the tool
banner(){
    echo -e "\e[32;1m"
    echo '
               ___
              / •_)
     _.----._/ /
    /         /
 __/ (  | (  |
/__.-`|_|--|_| '
    echo -e "\e[33;1m MADE BY CyberXaman"
}

banner

# edit the torrc file

if [ "$(uname -o)" == "Android" ]; then
    # Termux
    cd ~
    cd ..
    cd usr/etc/tor 
    sed -i '/ControlPort/s/^#//' torrc > /dev/null 2>&1
elif [ "$(uname)" == "Darwin" ]; then
    # Mac OS
    cd ~/Library/Application\ Support/tor
    sed -i '' '/ControlPort/s/^#//' torrc > /dev/null 2>&1
elif [ "$(uname -o)" == "Msys" ]; then
    # Windows
    echo "The torrc file edit is not supported on Windows."
else
    #Linux
    cd ~
    cd ..
    cd etc/tor
    sed -i '/ControlPort/s/^#//' torrc > /dev/null 2>&1 
fi
