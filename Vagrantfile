# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define 'manager' do |config|
    config.vm.box = "dobyexample/docker-alpine"
    config.vm.hostname = "manager"
    config.vm.network "private_network", ip: "10.0.7.100"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.network :forwarded_port, guest: 3306, host: 3306
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end

  config.vm.define 'node1' do |config|
    config.vm.box = "dobyexample/docker-alpine"
    config.vm.hostname = "node1"
    config.vm.network "private_network", ip: "10.0.7.11"
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end

  config.vm.define 'node2' do |config|
    config.vm.box = "dobyexample/docker-alpine"
    config.vm.hostname = "node2"
    config.vm.network "private_network", ip: "10.0.7.12"
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end

end
