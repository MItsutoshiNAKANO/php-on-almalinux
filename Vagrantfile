$script = <<-SCRIPT
  # @see https://www.if-not-true-then-false.com/2010/install-virtualbox-guest-additions-on-fedora-centos-red-hat-rhel/#14-install-following-packages
  sudo dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
  sudo dnf -y upgrade
  sudo dnf -y install gcc kernel-devel kernel-headers dkms make bzip2 perl

  sudo dnf -y install ansible-core
  ansible-playbook /vagrant/php.ansible.playbook.yaml
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "almalinux/9"
  # @see https://developer.hashicorp.com/vagrant/docs/providers/virtualbox/configuration#vboxmanage-customizations
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = true
  end
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provision "shell", inline: $script
end
