Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.host_name = "%projectname%"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.synced_folder('..', "/var/www/%projectname%", :mount_options => ['dmode=777','fmode=777'])
  config.vm.network "forwarded_port", guest: 80, host: 8099
  config.vm.network "forwarded_port", guest: 443, host: 44399

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "%projectname%.pp"
    puppet.module_path = "modules"
  end

end

