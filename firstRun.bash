#!/bin/bash

echo "Checking Internet Connection.."


if Ping www.google.nl -n -1 -w 1000 
then 
 echo "Connection looks fine, preparing to install"
 read -p "Are you ready for installation?" -n 1 -r
 if [[ $REPLY =~ ^[Yy]$ ]]
 then
 #Update apt and upgrade
 apt-get -y update && upgrade
 #Install add-apt-repository
 apt-get -y install software-properties-common
 #Install curl
 apt-get -y install curl
 #Install Firewall Ports
 
 #Install midnight commander
 apt-get -y install mc
 #Install gcc compiler {make}
 apt-get -y install gcc
 apt-get -y install build-essential
 
 
 fi
elif 
 echo "Internet connection is not detected" 
 read -p "Try again?" -n 1 -r
 if [[ $REPLY =~ ^[Yy]$ ]]
  echo "Instalation canceled"
  timeout 5s exit "If you wants try again open firstRun bash script"
 fi
fi
