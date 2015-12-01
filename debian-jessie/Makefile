all:
	packer build template.json

qemu:
	packer build -only=qemu template.json

virtualbox:
	packer build -only=virtualbox-iso template.json

.PHONY: clean

clean:
	rm -rf packer_cache *.box
