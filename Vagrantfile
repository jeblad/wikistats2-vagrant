Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    config.vm.network "forwarded_port", guest: 3306, host: 3309, auto_correct: true
    config.vm.network "forwarded_port", guest: 5000, host: 5001, auto_correct: true
    config.vm.network "forwarded_port", guest: 9876, host: 9877, auto_correct: true

    config.vm.provider "virtualbox" do |v|
        v.name = "SitePoint Test Vagrant"
        v.customize ["modifyvm", :id, "--memory", "1024"]
    end

    config.vm.provision "shell" do |s|
        s.path "provision/setup.sh"
    end
end