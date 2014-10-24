VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|

  # os image
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # server
  config.vm.define "jenkins" do |jenkins|

        # hostname
        jenkins.vm.hostname = "jenkins.cc.de"
        # public network
	jenkins.vm.network "public_network", :bridge => "wlan0"
        # private network
	# jenkins.vm.network "private_network", ip: "10.0.1.111"
        jenkins.vm.provider "openiam" do |jenkins|
                jenkins.memory = 2048
                jenkins.cpus = 2
        end

        # Set the Timezone
        config.vm.provision :shell, :inline => "echo \"Europe/Berlin\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

        # upgrade puppet
#        jenkins.vm.provision :shell, :path => "upgrade-puppet.sh"

        # provisioning with puppet
        jenkins.vm.provision "puppet" do |puppet|
                puppet.manifests_path = "manifests"
                puppet.manifest_file = "init.pp"
                puppet.module_path = "modules"
#		puppet.options = "--hiera_config /vagrant/files/hiera.yaml"
        end
  end
end
