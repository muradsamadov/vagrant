Vagrant.configure("2") do |config|
  config.vm.define "kubernetes-master" do |vm1|
    vm1.vm.hostname = "kubernetes-master"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network", ip: "192.168.24.5"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "kubernetes-master"
      vb.gui = false
      vb.memory = 2048
    end
  
    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
      yum update -y ; yum install vim net-tools -y
    SHELL
  end

  config.vm.define "kubernetes-worker1" do |vm1|
    vm1.vm.hostname = "kubernetes-worker1"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network", ip: "192.168.24.6"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "kubernetes-worker1"
      vb.gui = false
      vb.memory = 2048
    end

    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
      yum update -y ; yum install vim net-tools -y
    SHELL
  end

  config.vm.define "kubernetes-worker2" do |vm1|
    vm1.vm.hostname = "kubernetes-worker2"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network", ip: "192.168.24.7"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "kubernetes-worker2"
      vb.gui = false
      vb.memory = 2048
    end

    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
      yum update -y ; yum install vim net-tools -y
    SHELL
  end

end
