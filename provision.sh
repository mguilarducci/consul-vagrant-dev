#!/usr/bin/env bash

echo Installing dependencies...
#sudo yum update
sudo yum install -y unzip curl

echo Fetching Consul...
cd /tmp/
curl https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip -o consul.zip

echo Installing Consul...
unzip consul.zip
sudo chmod +x consul
sudo mv consul /usr/bin/consul

echo Creating config path...
sudo mkdir -p /etc/consul.d
sudo chmod a+w /etc/consul.d
sudo mkdir -p /var/consul
sudo chmod a+w /var/consul
