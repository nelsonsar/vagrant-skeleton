Vagrant::Config.run do |config|

  config.vm.box = "precise64"
  config.vm.host_name = "cecap"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.boot_mode = :headless
  config.vm.share_folder("cecap", "/var/www/cecap", "..", :extra => 'dmode=777,fmode=777')
  config.vm.forward_port 80, 8099
  config.vm.forward_port 443, 44399

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "cecap.pp"
    puppet.module_path = "modules"
  end

end

