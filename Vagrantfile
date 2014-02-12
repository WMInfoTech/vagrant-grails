# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64-wmit"
  config.vm.box_url = "http://mirror.swem.wm.edu/vagrant/precise64-wmit.box"

  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

  config.vm.synced_folder "grails_app/", "/home/vagrant/grails_app", owner: "vagrant", group: "vagrant"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "site.pp"
    puppet.facter = {
      "vagrant" => "1"
    }
    puppet.options = [
      "--pluginsync"
    ]
  end
end
