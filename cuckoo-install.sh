#!/usr/bin/env bash
# ! for ubuntu 18.04 LTS
# without virtualenv
sudo apt-get update
sudo apt-get -y install python virtualenv python-pip python-dev build-essential
sudo apt-get install python-virtualenv python-setuptools
sudo apt-get install libjpeg-dev zlib1g-dev swig
sudo apt-get install mongodb
sudo apt-get install postgresql libpq-dev
sudo apt install virtualbox
echo "You need only to create virtual network vboxnet0"
sleep 5
virtualbox 
sudo groupadd pcap
sudo useradd cuckoo
sudo usermod -a -G pcap cuckoo
sudo chgrp pcap /usr/sbin/tcpdump
sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
getcap /usr/sbin/tcpdump
sudo apt-get install libssl-dev swig python3-dev gcc
sudo pip install m2crypto
sudo pip install cryptography==3.2
sudo pip install -U cuckoo
wget https://cuckoo.sh/win7ultimate.iso
sudo mkdir /mnt/win7
sudo chown cuckoo /mnt/win7/
sudo mount -o ro,loop win7ultimate.iso /mnt/win7
# only check if you install all requirement packages
sudo apt-get -y install build-essential libssl-dev libffi-dev python-dev genisoimage
sudo apt-get -y install zlib1g-dev libjpeg-dev
sudo apt-get -y install python-pip python-virtualenv python-setuptools swig
sudo pip install vmcloak
vmcloak-vboxnet0 
vmcloak init --verbose --win7x64 win7x64base --cpus 2 --ramsize 2048
