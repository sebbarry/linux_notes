#!/bin/bash

if [[ $(id -u) -ne 0 ]] 
then 
	echo "install as root"
	exit 1
fi


function updateFirewall() {
	sudo yum install firewalld
	sudo firewall-cmd --permanent --add-port=8000/tcp
	sudo firewall-cmd --permanent --add-port=8089/tcp
	sudo firewall-cmd --permament --add-port=5514/tcp
	sudo firewall-cmd --permanent --add-port=80/tcp
	sudo firewall-cmd --permament --add-port=443/tcp
	sudo systemctl restart firewalld.service
}


function createUser () {
	sudo groupadd splunk
	sudo useradd -d /opt/splunk -g splunk splunk
}

function installSplunk () {
	sudo yum -y install wget
	#this will give use the architecture
	#download 64 bit arch version
	echo "======= downloading files ======= $(date)"
	sudo wget -O splunk-8.2.3-cd0848707637-Linux-x86_64.tgz 'https://download.splunk.com/products/splunk/releases/8.2.3/linux/splunk-8.2.3-cd0848707637-Linux-x86_64.tgz'
	#unzip the file intot the ~/opt folder.
	sudo tar -zxvf $(ls | grep $"tgz") -C /opt/
	chown -R splunk: /opt/splunk/
	#start the instance
	sudo /opt/splunk/bin/splunk status
	sudo /opt/splunk/bin/splunk start --accept-license
	sudo /opt/splunk/bin/splunk enable boot-start #enable bootup start
}

updateFirewall
createUser
installSplunk

