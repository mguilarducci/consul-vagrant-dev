# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
CONSUL_SCRIPT_INSTALL = "./consul_install.sh"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"

  config.vm.provision "shell", path: "./provision.sh"

  config.vm.define "consul_server_bootstrap" do |consul_server_bootstrap|
    consul_server_bootstrap.vm.hostname = "consul-server-bootstrap"
    consul_server_bootstrap.vm.network "private_network", ip: "192.168.22.10"
  end

  config.vm.define "consul_server_one" do |consul_server_one|
    consul_server_one.vm.hostname = "consul-server-one"
    consul_server_one.vm.network "private_network", ip: "192.168.22.11"
  end

  config.vm.define "consul_server_two" do |consul_server_two|
    consul_server_two.vm.hostname = "consul-server-two"
    consul_server_two.vm.network "private_network", ip: "192.168.22.12"
  end

  config.vm.define "consul_client_ui" do |consul_client_ui|
    consul_client_ui.vm.hostname = "consul-client-ui"
    consul_client_ui.vm.network "private_network", ip: "192.168.22.13"
    consul_client_ui.vm.provision "shell", path: "./provision_client.sh"
  end

  config.vm.define "service_node_one" do |service_node_one|
    service_node_one.vm.hostname = "service-node-one"
    service_node_one.vm.network "private_network", ip: "192.168.22.14"
    service_node_one.vm.provision "shell", path: "./provision_node.sh"
  end

  config.vm.define "service_node_two" do |service_node_two|
    service_node_two.vm.hostname = "service-node-two"
    service_node_two.vm.network "private_network", ip: "192.168.22.15"
    # service_node_two.vm.provision "shell", path: "./provision_node.sh"
  end
end
