veewee-rhel-templates
=====================

Veewee Templates for Creating Redhat Vagrant Boxes

Requirements
------------
VirtualBox 4.3.6
Vagrant 1.4.3
Ruby 1.9.3-p484
DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe (extract to /c/Ruby193/DevKit)
Git Bash
# Configure PATH to include ruby, vagrant, VBoxManage

# Using Git Bash as terminal
cd /c/Ruby193/DevKit
ruby dk.rb init
ruby dk.rb.install

# Install veewee from source:
git clone https://github.com/jedi4ever/veewee.git
cd veewee
gem install bundler
bundle install
alias veewee='bundle exec veewee'

# Download the Veewee RHEL6 template:
cd ..
git clone https://github.com/jmassara/veewee-rhel6-vbox.git
cp -pR ../veewee-rhel6-vbox/rhel-server-6.4-x86_64-minimal templates
veewee vbox define 'rhel64-minimal' 'rhel-server-6.4-x86_64-minimal'
veewee vbox build 'rhel64-minimal'
veewee vbox export 'rhel64-minimal'

