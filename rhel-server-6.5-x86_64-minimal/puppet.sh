# Install Puppet

# Install Puppet Labs repo:
rpm -ivh https://yum.puppetlabs.com/el/6.4/products/x86_64/puppetlabs-release-6-10.noarch.rpm

# Install rubygems RPM which isn't on the RHEL DVD.
rpm -ivh ftp://ftp.pbone.net/mirror/ftp.scientificlinux.org/linux/scientific/6.1/i386/os/Packages/rubygems-1.3.7-1.el6.noarch.rpm

yum -y install puppet facter ruby-shadow

