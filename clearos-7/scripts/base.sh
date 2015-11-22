sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y --enablerepo=clearos-centos install gcc make gcc-c++ kernel-devel-`uname -r` perl
