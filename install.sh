#!/bin/bash

apt-get update
apt-get upgrade
clear
sleep 2
if command -v python &> /dev/null; then
	echo -e "\e[1;32mPython is installed\e[0m"
	python --version
else
	echo -e "\e[1;31mPython is not installed.\e[0m"
	apt-get install python
fi
if command -v wget &> /dev/null; then
	echo -e "\e[1;32mwget is installed \e[0m"
	wget --version | head -n 1
else
	echo -e "\e[1;31mwget is not installed.\e[0m"
fi
if pip show omero-marshal &> /dev/null; then
	echo -e "\e[1;32momero-marshal is installed\e[0m"
	pip show omero-marshal | grep Version
else
	echo -e "\e[1;31momero-marshal is not installed.\e[0m"
	pip install omero-marshal
fi
mkdir /data/data/com.termux/files/usr/libexec/IP-Tracker/
clear
wget -O /data/data/com.termux/files/usr/libexec/IP-Tracker/main.os https://raw.githubusercontent.com/infinitynetwork13/IP-Tracker/main/main.os
clear
wget -O /data/data/com.termux/files/usr/bin/ip-info https://raw.githubusercontent.com/infinitynetwork13/IP-Tracker/bash/ip-info
clear
chmod 777 /data/data/com.termux/files/usr/bin/ip-info
clear
ip-info
