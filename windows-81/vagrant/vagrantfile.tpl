Vagrant.require_version ">= 1.6.2"

Vagrant.configure("2") do |config|
    config.vm.communicator = "winrm"
    config.winrm.username = "vagrant"
    config.winrm.password = "vagrant"

    config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true
    config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true

    config.vm.provider :virtualbox do |v, override|
        v.customize ["modifyvm", :id, "--cpus", 2]
        v.customize ["modifyvm", :id, "--memory", 2048]
        v.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
    end
end
