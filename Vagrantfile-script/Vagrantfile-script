Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "script.sh" 

  config.vm.define "mongo-primary" do |vm1|
    vm1.vm.hostname = "mongo-primary"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network" , ip: "192.168.24.20"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "mongo-primary"
      vb.gui = false
      vb.memory = "512"
      vb.cpus = "1"
    end
  
   end

  config.vm.define "mongo-standby" do |vm1|
    vm1.vm.hostname = "mongo-standby"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network" , ip: "192.168.24.21"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "mongo-standby"
      vb.gui = false
      vb.memory = "512"
      vb.cpus = "1"
    end

   end

  config.vm.define "mongo-arbiter" do |vm1|
    vm1.vm.hostname = "mongo-arbiter"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network" , ip: "192.168.24.22"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "mongo-arbiter"
      vb.gui = false
      vb.memory = "512"
      vb.cpus = "1"
    end

   end

end
