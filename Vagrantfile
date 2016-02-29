# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3006, host: 3006
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "public_network"
  config.vm.synced_folder "/data/", "/home/vagrant/data/"
  # Bootstrap enviroment.
  config.vm.provision :shell, :path => "setup/bootstrap.sh" 

end
