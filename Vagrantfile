
Vagrant.configure(2) do |config|
	config.vm.box = "centos/7"
	config.vm.box_version = "1804.02"
	config.vm.box_check_update = true
	config.ssh.forward_agent = true

	## Disable default shared folder (Shared folder can be configured later with virtualbox)
	config.vm.synced_folder ".", "/vagrant", disabled: true
	config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
	config.vm.synced_folder ".", "/home/vagrant/shared", type: "virtualbox"

	config.vm.hostname = "jenkins-test"
	config.vm.network :private_network, ip: '192.168.56.110'

	## Common virtual box settings
	config.vm.provider "virtualbox" do |vb|
		vb.gui = false
		vb.memory = "2048"
		vb.cpus = 2
		vb.name = "jenkins-test"
	end

	config.vm.provision "shell", path: "./provision.sh", args: [ENV['USERNAME']]
	config.vm.provision "file", source: "jenkins", destination: "jenkins"	
	config.vm.provision "shell", path: "./jenkins.sh"
end
