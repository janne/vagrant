Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  config.vm.share_folder "git", "git", "..", :nfs => true

  config.vm.provision :chef_solo do |chef|
    config.vm.customize ["modifyvm", :id, "--memory", 1024]
    config.vm.network :hostonly, "10.10.10.10"

    chef.cookbooks_path = [ "cookbooks", "site-cookbooks" ]
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_role "base"
    chef.json = {
      :name => "Jan Andersson",
      :email => "jan.andersson@gmail.com"
    }
  end
end
# vi: set ft=ruby :
