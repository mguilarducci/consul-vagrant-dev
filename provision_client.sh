#!/usr/bin/env bash

echo Fetching consul ui...
cd /home/vagrant
curl https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_web_ui.zip -o consul_ui.zip

unzip consul_ui.zip
