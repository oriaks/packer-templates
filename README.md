# oriaks/packer-templates

These are Packer templates to build our base images for Vagrant/VirtualBox at Oriaks.

## Requirements

- [Packer](https://packer.io/)
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## How to use

    git clone https://github.com/oriaks/packer-templates.git
    cd packer-templates/debian-jessie
    packer build template.json
    vagrant box add --name debian-jessie debian-jessie.box

## ToDo

- Add libvirt builders

## See also

- [debian-vm-templates](https://anonscm.debian.org/git/cloud/debian-vm-templates.git/)
- [packer-templates](https://github.com/shiguredo/packer-templates/)
- [packer-windows](https://github.com/joefitzgerald/packer-windows/)
- [os-packer](https://github.com/rancher/os-packer/)
