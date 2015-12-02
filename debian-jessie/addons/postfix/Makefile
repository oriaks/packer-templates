all: clean
	vagrant up
	vagrant halt
	vagrant package --vagrantfile Vagrantfile.tpl --output "debian-jessie64-postfix.box"
	vagrant destroy -f
	rm -rf .vagrant

.PHONY: clean

clean:
	rm -f *.box
