Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/bionic64"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.network "forwarded_port", guest: 3306, host: 3309
    config.vm.network "forwarded_port", guest: 5000, host: 5001
    config.vm.network "forwarded_port", guest: 9876, host: 9877

    config.vm.provision :shell, :inline => "curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get -y install nodejs"

end