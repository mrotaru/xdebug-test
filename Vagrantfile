# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "squeeze32"
  config.vm.box_url = "http://mathie-vagrant-boxes.s3.amazonaws.com/debian_squeeze_32.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.network :forwarded_port, host: 9000, guest: 9000
  config.vm.provision :shell, :path => "bootstrap.sh"
end
