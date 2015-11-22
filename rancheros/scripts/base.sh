cat > /var/lib/rancher/conf/cloud-config.yml << EOF
ssh_authorized_keys:
- `wget -O- https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub`
write_files: []
hostname: ""
rancher:
  services_include:
    debian-console: true
EOF

ros install -c /var/lib/rancher/conf/cloud-config.yml -d /dev/sda -f -t generic --no-reboot 
